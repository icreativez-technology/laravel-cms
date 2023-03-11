<?php

namespace Botble\Ecommerce\Models;

use Botble\Base\Models\BaseModel;
use Botble\Subscription\Models\Subscription;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class VendorSubscription extends BaseModel
{
    protected $table = 'vendor_subscriptions';

    protected $fillable = [
        'vendor_id',
        'subscription_id',
        'start_date',
        'end_date'
    ];

    protected $casts = [
        'start_date' => 'datetime',
        'end_date' => 'datetime',
    ];

    
    public function isExpired(): bool
    {
        if ($this->end_date && strtotime($this->end_date) < strtotime(now()->toDateTimeString())) {
            return true;
        }

        return false;
    }

    public function subscription(): BelongsTo
    {
        return $this->belongsTo(Subscription::class, 'subscription_id', 'id')->withDefault();
    }

}
