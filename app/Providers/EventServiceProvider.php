<?php

namespace App\Providers;

use Illuminate\Foundation\Support\Providers\EventServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Event;


class EventServiceProvider extends ServiceProvider
{
    /**
     * The event to listener mappings for the application.
     *
     * @var array<class-string, array<int, class-string>>
     */
    protected $listen = [
        // Bagisto event’i
        'sales.order.cancel.after' => [
            \App\Listeners\WalletRefundToCustomer::class,
        ],

        // Laravel event’i (isteğe bağlı)
        'eloquent.updated: Webkul\Sales\Models\Order' => [
            \App\Listeners\OrderCanceledListener::class,
        ],
    ];

    /**
     * Register any events for your application.
     */
    public function boot(): void
    {
        //
    }
}
