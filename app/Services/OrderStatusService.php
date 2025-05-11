<?php

namespace App\Services;

use App\Models\OrderStatus;
use Webkul\Sales\Models\Order;
use Webkul\Customer\Models\Customer;
use Illuminate\Support\Facades\Auth;

class OrderStatusService
{
    /**
     * Update the order status.
     *
     * @param int $orderId
     * @param string $status
     * @param string|null $comment
     * @return OrderStatus
     */
    public function updateStatus($orderId, $status, $comment = null)
    {
        // Create a new order status record
        $orderStatus = OrderStatus::create([
            'order_id' => $orderId,
            'status' => $status,
            'comment' => $comment,
            'created_by' => Auth::guard('admin')->check() ? Auth::guard('admin')->user()->id : null,
        ]);

        // Update the order status in the orders table
        $order = Order::findOrFail($orderId);
        $order->status = $status;
        $order->save();

        return $orderStatus;
    }

    /**
     * Cancel an order and refund the amount to the customer's wallet.
     *
     * @param int $orderId
     * @param string|null $comment
     * @return OrderStatus
     */
    public function cancelOrder($orderId, $comment = null)
    {
        $order = Order::findOrFail($orderId);

        // Check if the order can be cancelled
        $latestStatus = OrderStatus::where('order_id', $orderId)
            ->orderBy('created_at', 'desc')
            ->first();

        // If there's no status yet or the status is pending, the order can be cancelled
        if (!$latestStatus || $latestStatus->status === OrderStatus::STATUS_PENDING) {
            // Add the order amount to the customer's wallet
            $customer = Customer::findOrFail($order->customer_id);
            $customer->wallet_balance += $order->grand_total;
            $customer->save();

            // Update the order status to cancelled
            return $this->updateStatus($orderId, OrderStatus::STATUS_CANCELED, $comment);
        }

        throw new \Exception('Sipariş iptal edilemez. Sipariş zaten işleme alınmış.');
    }

    /**
     * Get the next possible status for an order.
     *
     * @param int $orderId
     * @return string|null
     */
    public function getNextStatus($orderId)
    {
        $latestStatus = OrderStatus::where('order_id', $orderId)
            ->orderBy('created_at', 'desc')
            ->first();

        if (!$latestStatus) {
            return OrderStatus::STATUS_PENDING;
        }

        switch ($latestStatus->status) {
            case OrderStatus::STATUS_PENDING:
                return OrderStatus::STATUS_PROCESSING;
            case OrderStatus::STATUS_PROCESSING:
                return OrderStatus::STATUS_SOURCING;
            case OrderStatus::STATUS_SOURCING:
                return OrderStatus::STATUS_PACKAGING;
            case OrderStatus::STATUS_PACKAGING:
                return OrderStatus::STATUS_SHIPPED;
            case OrderStatus::STATUS_SHIPPED:
                return OrderStatus::STATUS_IN_TRANSIT;
            case OrderStatus::STATUS_IN_TRANSIT:
                return OrderStatus::STATUS_DELIVERED;
            case OrderStatus::STATUS_DELIVERED:
                return OrderStatus::STATUS_COMPLETED;
            default:
                return null;
        }
    }

    /**
     * Mark an order as completed by the customer.
     *
     * @param int $orderId
     * @return OrderStatus
     */
    public function completeOrder($orderId)
    {
        $latestStatus = OrderStatus::where('order_id', $orderId)
            ->orderBy('created_at', 'desc')
            ->first();

        if ($latestStatus && $latestStatus->status === OrderStatus::STATUS_DELIVERED) {
            return $this->updateStatus($orderId, OrderStatus::STATUS_COMPLETED, 'Sipariş müşteri tarafından teslim alındı.');
        }

        throw new \Exception('Sipariş henüz teslim edilmedi.');
    }

    /**
     * Check if the order can be cancelled.
     *
     * @param int $orderId
     * @return bool
     */
    public function canCancel($orderId)
    {
        $latestStatus = OrderStatus::where('order_id', $orderId)
            ->orderBy('created_at', 'desc')
            ->first();

        return !$latestStatus || $latestStatus->status === OrderStatus::STATUS_PENDING;
    }

    /**
     * Check if the order can be marked as completed by the customer.
     *
     * @param int $orderId
     * @return bool
     */
    public function canComplete($orderId)
    {
        $latestStatus = OrderStatus::where('order_id', $orderId)
            ->orderBy('created_at', 'desc')
            ->first();

        return $latestStatus && $latestStatus->status === OrderStatus::STATUS_DELIVERED;
    }
}
