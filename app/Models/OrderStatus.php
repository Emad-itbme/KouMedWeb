<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Webkul\Sales\Models\Order;

class OrderStatus extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'order_id',
        'status',
        'comment',
        'created_by',
    ];

    /**
     * The statuses that an order can have.
     */
    const STATUS_PENDING = 'pending';
    const STATUS_PROCESSING = 'processing';
    const STATUS_SOURCING = 'sourcing'; // Products being sourced
    const STATUS_PACKAGING = 'packaging'; // Products being packaged
    const STATUS_SHIPPED = 'shipped'; // Order shipped
    const STATUS_IN_TRANSIT = 'in_transit'; // Order in transit
    const STATUS_DELIVERED = 'delivered'; // Order delivered
    const STATUS_COMPLETED = 'completed'; // Order confirmed by customer
    const STATUS_CANCELED = 'canceled';
    
    /**
     * Get all possible statuses.
     *
     * @return array
     */
    public static function getAllStatuses()
    {
        return [
            self::STATUS_PENDING => 'Beklemede',
            self::STATUS_PROCESSING => 'İşleniyor',
            self::STATUS_SOURCING => 'Ürünler Tedarik Ediliyor',
            self::STATUS_PACKAGING => 'Ürünler Kutulanıyor',
            self::STATUS_SHIPPED => 'Ürünler Kargoya Verildi',
            self::STATUS_IN_TRANSIT => 'Ürünler Size Doğru Yola Çıktı',
            self::STATUS_DELIVERED => 'Ürünler Size Teslim Edildi',
            self::STATUS_COMPLETED => 'Sipariş Kargolandı',
            self::STATUS_CANCELED => 'İptal Edildi',
        ];
    }

    /**
     * Get the status label.
     *
     * @return string
     */
    public function getStatusLabelAttribute()
    {
        return self::getAllStatuses()[$this->status] ?? $this->status;
    }

    /**
     * Get the order that owns the status.
     */
    public function order()
    {
        return $this->belongsTo(Order::class);
    }
}
