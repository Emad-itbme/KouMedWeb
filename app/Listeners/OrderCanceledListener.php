<?php

namespace App\Listeners;

use Webkul\Sales\Models\Order; // Updated from Checkout to Sales

class OrderCanceledListener
{
    /**
     * Handle the event.
     */
    public function handle(Order $order): void
    {
        if ($order->wasChanged('status') && $order->getOriginal('status') === 'pending' && $order->status === 'canceled') {
            $customer = $order->customer;
            $customer->balance += $order->grand_total;
            $customer->save();
        }
    }
}