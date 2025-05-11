<?php

namespace App\Http\Controllers\Shop;

use App\Http\Controllers\Controller;
use App\Models\OrderStatus;
use App\Services\OrderStatusService;
use Illuminate\Http\Request;
use Webkul\Sales\Models\Order;
use Illuminate\Support\Facades\Auth;

class OrderController extends Controller
{
    /**
     * OrderStatusService instance.
     *
     * @var \App\Services\OrderStatusService
     */
    protected $orderStatusService;

    /**
     * Create a new controller instance.
     *
     * @param  \App\Services\OrderStatusService  $orderStatusService
     * @return void
     */
    public function __construct(OrderStatusService $orderStatusService)
    {
        $this->orderStatusService = $orderStatusService;

        $this->middleware('customer');
    }

    /**
     * Display a listing of the customer's orders.
     *
     * @return \Illuminate\View\View
     */
    public function index()
    {
        $customer = Auth::guard('customer')->user();
        
        $orders = Order::where('customer_id', $customer->id)
            ->orderBy('created_at', 'desc')
            ->paginate(10);

        return view('shop.customers.account.orders.index', compact('orders'));
    }

    /**
     * Show the order details and status.
     *
     * @param  int  $orderId
     * @return \Illuminate\View\View
     */
    public function show($orderId)
    {
        $customer = Auth::guard('customer')->user();
        
        $order = Order::where('id', $orderId)
            ->where('customer_id', $customer->id)
            ->firstOrFail();

        $statuses = OrderStatus::where('order_id', $orderId)
            ->orderBy('created_at', 'desc')
            ->get();

        $canCancel = $this->orderStatusService->canCancel($orderId);
        $canComplete = $this->orderStatusService->canComplete($orderId);

        return view('shop.customers.account.orders.view', compact('order', 'statuses', 'canCancel', 'canComplete'));
    }

    /**
     * Cancel the order.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $orderId
     * @return \Illuminate\Http\RedirectResponse
     */
    public function cancel(Request $request, $orderId)
    {
        $customer = Auth::guard('customer')->user();
        
        // Check if the order belongs to the customer
        $order = Order::where('id', $orderId)
            ->where('customer_id', $customer->id)
            ->firstOrFail();

        try {
            $this->orderStatusService->cancelOrder(
                $orderId,
                'Müşteri tarafından iptal edildi.'
            );

            session()->flash('success', 'Siparişiniz başarıyla iptal edildi ve tutar cüzdanınıza iade edildi.');
        } catch (\Exception $e) {
            session()->flash('error', $e->getMessage());
        }

        return redirect()->route('customer.orders.index');
    }

    /**
     * Mark the order as completed (received by customer).
     *
     * @param  int  $orderId
     * @return \Illuminate\Http\RedirectResponse
     */
    public function complete($orderId)
    {
        $customer = Auth::guard('customer')->user();
        
        // Check if the order belongs to the customer
        $order = Order::where('id', $orderId)
            ->where('customer_id', $customer->id)
            ->firstOrFail();

        try {
            $this->orderStatusService->completeOrder($orderId);

            session()->flash('success', 'Siparişiniz başarıyla Kargolandı. Teşekkür ederiz!');
        } catch (\Exception $e) {
            session()->flash('error', $e->getMessage());
        }

        return redirect()->route('customer.orders.index');
    }
}
