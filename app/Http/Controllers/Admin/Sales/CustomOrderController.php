<?php

namespace App\Http\Controllers\Admin\Sales;

use App\Http\Controllers\Controller;
use App\Models\CustomOrder;
use App\Models\OrderStatus;
use App\Http\Controllers\Shop\CustomerWalletController;
use Illuminate\Http\Request;
use Webkul\Sales\Repositories\OrderRepository;

class CustomOrderController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct(
        protected OrderRepository $orderRepository
    ) {}

    /**
     * Update order status to next stage
     *
     * @param  int  $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function updateStatus($id)
    {
        $order = CustomOrder::findOrFail($id);
        
        if (!$order->canProceedToNextStatus()) {
            session()->flash('error', 'Sipariş durumu güncellenemiyor.');
            return redirect()->back();
        }
        
        $nextStatus = $order->getNextStatus();
        
        // Create new order status
        OrderStatus::create([
            'order_id' => $order->id,
            'status' => $nextStatus,
            'comment' => 'Admin tarafından durumu güncellendi: ' . $order->getStatusLabelAttribute(),
            'created_by' => auth()->user()->id,
        ]);
        
        // Update the order status
        $order->status = $nextStatus;
        $order->save();
        
        session()->flash('success', 'Sipariş durumu başarıyla güncellendi: ' . $order->getStatusLabelAttribute());
        
        return redirect()->back();
    }

    /**
     * Cancel order and refund to customer wallet
     *
     * @param  int  $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function cancelOrder($id)
    {
        $order = CustomOrder::findOrFail($id);
        
        if (!$order->canCancel()) {
            session()->flash('error', 'Bu sipariş iptal edilemez.');
            return redirect()->back();
        }
        
        // Process cancellation
        try {
            // Add refund to customer wallet
            if ($order->customer_id) {
                $refundAmount = $order->grand_total;
                
                CustomerWalletController::addToWallet(
                    $order->customer_id, 
                    $refundAmount, 
                    'Sipariş iptali için iade: #' . $order->increment_id
                );
            }
            
            // Update order status
            $order->status = CustomOrder::STATUS_CANCELED;
            $order->save();
            
            // Record the status change
            OrderStatus::create([
                'order_id' => $order->id,
                'status' => CustomOrder::STATUS_CANCELED,
                'comment' => 'Sipariş admin tarafından iptal edildi. ' . core()->formatPrice($order->grand_total) . ' müşteri cüzdanına iade edildi.',
                'created_by' => auth()->user()->id,
            ]);
            
            session()->flash('success', 'Sipariş iptal edildi ve ' . core()->formatPrice($order->grand_total) . ' müşteri cüzdanına iade edildi.');
        } catch (\Exception $e) {
            session()->flash('error', 'Sipariş iptal edilirken bir hata oluştu: ' . $e->getMessage());
        }
        
        return redirect()->back();
    }
}
