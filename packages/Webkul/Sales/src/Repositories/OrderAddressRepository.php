<?php

namespace Webkul\Sales\Repositories;

use Webkul\Core\Eloquent\Repository;

/**
 * Order Address Repository
 *
 * @author    Jitendra Singh <jitendra@Webkul.com>
 * @copyright 2018 Webkul Software Pvt Ltd (http://www.Webkul.com)
 */
class OrderAddressRepository extends Repository
{
    /**
     * Specify Model class name
     */
    public function model(): string
    {
        return 'Webkul\Sales\Contracts\OrderAddress';
    }
}
