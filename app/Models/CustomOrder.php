<?php

namespace App\Models;

use Webkul\Sales\Models\Order as BaseOrder;

class CustomOrder extends BaseOrder
{
    /**
     * Order Preparation Statuses
     */
    public const STATUS_PREPARING = 'preparing'; // ürünleriniz tedarik ediliyor
    public const STATUS_PACKING = 'packing'; // ürünleriniz kutulanıyor
    public const STATUS_SHIPPED = 'shipped'; // ürünleriniz kargoya veriliyor
    public const STATUS_IN_TRANSIT = 'in_transit'; // ürünleriniz size doğru yola çıktı
    public const STATUS_DELIVERED = 'delivered'; // ürünleriniz size teslim edilmiştir

    /**
     * Extended status labels
     */
    protected $extendedStatusLabel = [
        self::STATUS_PENDING => 'Beklemede',
        self::STATUS_PENDING_PAYMENT => 'Ödeme Bekliyor',
        self::STATUS_PROCESSING => 'İşleniyor',
        self::STATUS_PREPARING => 'Ürünleriniz tedarik ediliyor',
        self::STATUS_PACKING => 'Ürünleriniz kutulanıyor',
        self::STATUS_SHIPPED => 'Ürünleriniz kargoya veriliyor',
        self::STATUS_IN_TRANSIT => 'Ürünleriniz size doğru yola çıktı',
        self::STATUS_DELIVERED => 'Ürünleriniz size teslim edilmiştir',
        self::STATUS_COMPLETED => 'Kargolandı',
        self::STATUS_CANCELED => 'İptal Edildi',
        self::STATUS_CLOSED => 'Teslim Edildi',
        self::STATUS_FRAUD => 'Şüpheli İşlem',
    ];

    /**
     * Return extended status label
     */
    public function getStatusLabelAttribute()
    {
        return $this->extendedStatusLabel[$this->status] ?? $this->status;
    }

    /**
     * Check if order can proceed to next status
     */
    public function canProceedToNextStatus(): bool
    {
        $allowedTransitions = [
            self::STATUS_PROCESSING => self::STATUS_PREPARING,
            self::STATUS_PREPARING => self::STATUS_PACKING,
            self::STATUS_PACKING => self::STATUS_SHIPPED,
            self::STATUS_SHIPPED => self::STATUS_IN_TRANSIT,
            self::STATUS_IN_TRANSIT => self::STATUS_DELIVERED,
            self::STATUS_DELIVERED => self::STATUS_COMPLETED,
        ];

        return isset($allowedTransitions[$this->status]);
    }

    /**
     * Get next status in order process
     */
    public function getNextStatus(): ?string
    {
        $allowedTransitions = [
            self::STATUS_PROCESSING => self::STATUS_PREPARING,
            self::STATUS_PREPARING => self::STATUS_PACKING,
            self::STATUS_PACKING => self::STATUS_SHIPPED,
            self::STATUS_SHIPPED => self::STATUS_IN_TRANSIT,
            self::STATUS_IN_TRANSIT => self::STATUS_DELIVERED,
            self::STATUS_DELIVERED => self::STATUS_COMPLETED,
        ];

        return $allowedTransitions[$this->status] ?? null;
    }

    /**
     * Check if user can cancel order
     */
    public function canUserCancel(): bool
    {
        // User can only cancel if the order is pending, pending_payment or processing
        return in_array($this->status, [
            self::STATUS_PENDING,
            self::STATUS_PENDING_PAYMENT,
            self::STATUS_PROCESSING
        ]);
    }

    /**
     * Get order statuses
     */
    public function orderStatuses()
    {
        return $this->hasMany(OrderStatus::class, 'order_id');
    }
}
