<?php

namespace Botble\Subscription\Models;

use Botble\Base\Models\BaseModel;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Plugin extends BaseModel
{
    protected $table = 'seller_subscriptions';

    protected $fillable = [
        'seller_id',
        'subscription_id',
        'transaction_id',
        'amount',
        'payment_method'
    ];

}
