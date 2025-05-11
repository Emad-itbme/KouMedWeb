<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\OrderStatus;
use App\Services\OrderStatusService;
use Illuminate\Http\Request;
use Webkul\Sales\Models\Order;

class OrderStatusController extends Controller
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

        $this->middleware('admin');
    }

    /**
     * Show the order status history.
     *
     * @param  int  $orderId
     * @return \Illuminate\View\View
     */
    public function show($orderId)
    {
        $order = Order::findOrFail($orderId);
        $statuses = OrderStatus::where('order_id', $orderId)
            ->orderBy('created_at', 'desc')
            ->get();

        $nextStatus = $this->orderStatusService->getNextStatus($orderId);

        return view('admin.sales.orders.status', compact('order', 'statuses', 'nextStatus'));
    }

    /**
     * Update the order status.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $orderId
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(Request $request, $orderId)
    {
        $this->validate($request, [
            'status' => 'required|string',
            'comment' => 'nullable|string',
        ]);

        try {
            $this->orderStatusService->updateStatus(
                $orderId,
                $request->input('status'),
                $request->input('comment')
            );

            session()->flash('success', 'Sipariş durumu başarıyla güncellendi.');
        } catch (\Exception $e) {
            session()->flash('error', $e->getMessage());
        }

        return redirect()->back();
    }

    /**
     * Advance the order to the next status.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $orderId
     * @return \Illuminate\Http\RedirectResponse
     */
    public function advance(Request $request, $orderId)
    {
        $this->validate($request, [
            'comment' => 'nullable|string',
        ]);

        try {
            $nextStatus = $this->orderStatusService->getNextStatus($orderId);

            if (!$nextStatus) {
                session()->flash('error', 'Sipariş için sonraki duruma geçilemez.');
                return redirect()->back();
            }

            $this->orderStatusService->updateStatus(
                $orderId,
                $nextStatus,
                $request->input('comment')
            );

            session()->flash('success', 'Sipariş durumu başarıyla güncellendi.');
        } catch (\Exception $e) {
            session()->flash('error', $e->getMessage());
        }

        return redirect()->back();
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
        $this->validate($request, [
            'comment' => 'nullable|string',
        ]);

        try {
            $this->orderStatusService->cancelOrder(
                $orderId,
                $request->input('comment')
            );

            session()->flash('success', 'Sipariş başarıyla iptal edildi ve tutar müşteri cüzdanına iade edildi.');
        } catch (\Exception $e) {
            session()->flash('error', $e->getMessage());
        }

        return redirect()->back();
    }
}
