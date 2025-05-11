<?php

namespace App\Listeners;

use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;

class WalletRefundToCustomer
{
    public function handle($order)
    {
        if (! $order || ! $order->customer) return;

        $customer = $order->customer;
        $customer->wallet_balance += $order->grand_total;
        $customer->save();
    }
}