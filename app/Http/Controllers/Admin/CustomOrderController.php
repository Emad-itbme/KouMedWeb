<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Webkul\Sales\Repositories\OrderRepository;
use Illuminate\Support\Facades\Event;

class CustomOrderController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct(
        protected OrderRepository $orderRepository
    ) {
    }

    /**
     * Update the order status based on the project requirements
     *
     * @param  Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function updateOrderStatus(Request $request, $id)
    {
        $order = $this->orderRepository->findOrFail($id);

        // Get current status and determine next status
        $currentStatus = $order->status;
        $nextStatus = $this->getNextStatus($currentStatus);

        if (!$nextStatus) {
            session()->flash('error', trans('admin::app.sales.orders.view.invalid-status'));
            return redirect()->back();
        }

        // Update the order status
        $this->orderRepository->update(['status' => $nextStatus], $id);

        session()->flash('success', trans('admin::app.sales.orders.view.status-updated'));

        Event::dispatch('sales.order.status.update.after', $order);

        return redirect()->back();
    }

    /**
     * Get the next order status based on the current status
     *
     * @param  string  $currentStatus
     * @return string|null
     */
    private function getNextStatus($currentStatus)
    {
        $statusFlow = [
            'pending' => 'processing',      // Order received -> Order processing
            'processing' => 'sourcing',     // Processing -> Products being sourced
            'sourcing' => 'packaging',      // Sourcing -> Products being packaged
            'packaging' => 'shipping',      // Packaging -> Order shipped
            'shipping' => 'delivered',      // Shipped -> Order out for delivery
            'delivered' => 'delivered',     // No further automatic status - customer confirms
            'completed' => 'completed',     // Completed is final
            'canceled' => 'canceled',       // Canceled is final
        ];

        return $statusFlow[$currentStatus] ?? null;
    }
}
