<?php
use App\Http\Controllers\Shop\CustomOrderController;

// Custom order management routes
Route::prefix('customer/account')->middleware(['web', 'customer'])->group(function () {
    Route::post('orders/{id}/confirm-delivery', [CustomOrderController::class, 'confirmDelivery'])->name('shop.customers.account.orders.confirm-delivery');
    Route::post('orders/{id}/cancel', [CustomOrderController::class, 'cancelOrder'])->name('shop.customers.account.orders.cancel');
    Route::get('orders/{id}/status', [CustomOrderController::class, 'getOrderStatus'])->name('shop.customers.account.orders.status');
});

// Admin order management routes
Route::prefix(config('app.admin_url'))->middleware(['web', 'admin'])->group(function () {
    Route::put('sales/orders/{id}/update-status', [\App\Http\Controllers\Admin\CustomOrderController::class, 'updateOrderStatus'])->name('admin.sales.orders.update-status');
});
