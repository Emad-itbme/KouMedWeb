<?php

namespace App\Http\Controllers\Shop;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Webkul\Sales\Repositories\OrderRepository;
use Webkul\Customer\Repositories\CustomerRepository;
use Webkul\Sales\Repositories\InvoiceRepository;
use Illuminate\Support\Facades\Event;
use Webkul\Customer\Models\Customer;

class CustomOrderController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct(
        protected OrderRepository $orderRepository,
        protected CustomerRepository $customerRepository,
        protected InvoiceRepository $invoiceRepository
    ) {
    }

    /**
     * Confirm delivery of an order by customer
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function confirmDelivery($id)
    {
        $order = $this->orderRepository->findOrFail($id);

        // Check if the order belongs to the customer
        if ($order->customer_id != auth()->guard('customer')->user()->id) {
            session()->flash('error', trans('shop::app.customer.account.orders.view.unauthorized-access'));

            return redirect()->route('shop.customers.account.orders.index');
        }

        // Check if the order is in the right status to be confirmed
        if ($order->status != 'delivered') {
            session()->flash('error', trans('shop::app.customer.account.orders.view.delivery-not-ready'));

            return redirect()->route('shop.customers.account.orders.view', ['id' => $id]);
        }

        // Update the order status to completed
        $this->orderRepository->update(['status' => 'completed'], $id);

        session()->flash('success', trans('shop::app.customer.account.orders.view.delivery-confirmed'));

        Event::dispatch('shop.orders.delivery_confirmed', $order);

        return redirect()->route('shop.customers.account.orders.view', ['id' => $id]);
    }

    /**
     * Cancel an order by customer
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function cancelOrder($id)
    {
        $order = $this->orderRepository->findOrFail($id);

        // Check if the order belongs to the customer
        if ($order->customer_id != auth()->guard('customer')->user()->id) {
            session()->flash('error', trans('shop::app.customer.account.orders.view.unauthorized-access'));

            return redirect()->route('shop.customers.account.orders.index');
        }

        // Check if the order has been approved by admin
        if ($order->status !== 'pending') {
            session()->flash('error', trans('shop::app.customer.account.orders.view.cannot-cancel-approved'));

            return redirect()->route('shop.customers.account.orders.view', ['id' => $id]);
        }

        // Calculate the order amount to add to customer wallet
        $orderAmount = $order->grand_total;

        // Update order status to canceled
        $this->orderRepository->cancel($id);

        // Add the amount to customer wallet
        $customer = $this->customerRepository->find($order->customer_id);
        $currentBalance = $customer->wallet_balance ?? 0;
        $customer->wallet_balance = $currentBalance + $orderAmount;
        $customer->save();

        session()->flash('success', trans('shop::app.customer.account.orders.view.order-canceled-and-credited'));

        Event::dispatch('shop.orders.cancel.after', $order);

        return redirect()->route('shop.customers.account.orders.index');
    }

    /**
     * Get order status details
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function getOrderStatus($id)
    {
        $order = $this->orderRepository->findOrFail($id);

        // Check if the order belongs to the customer
        if ($order->customer_id != auth()->guard('customer')->user()->id) {
            return response()->json([
                'error' => trans('shop::app.customer.account.orders.view.unauthorized-access')
            ], 403);
        }

        // Get the current order status and map it to the project-specific status
        $statusMap = [
            'pending' => 'processing', // Order received
            'processing' => 'sourcing', // Products being sourced
            'sourcing' => 'packaging', // Products being packaged
            'packaging' => 'shipping', // Order shipped
            'shipping' => 'delivered', // Order out for delivery
            'delivered' => 'delivered', // Order delivered
            'completed' => 'completed', // Delivery confirmed by customer
            'canceled' => 'canceled', // Order canceled
        ];

        $currentStatus = $order->status;
        $mappedStatus = $statusMap[$currentStatus] ?? $currentStatus;

        return response()->json([
            'status' => $mappedStatus,
            'canCancel' => $order->status === 'pending',
            'canConfirmDelivery' => $order->status === 'delivered',
        ]);
    }
}
