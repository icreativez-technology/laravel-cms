<?php

namespace Botble\Subscription\Models;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Models\BaseModel;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

class Subscription extends BaseModel
{
    protected $table = 'subscriptions';

    protected $fillable = [
        'name',
        'amount',
        'product_upload_limit',
        'duration',
        'addons',
        'subscription_logo'
    ];


    public function setAddonsAttribute($value)
    {
        $this->attributes['addons'] = implode(",",$value);
    }

    public function getAddonsAttribute($value) 
    {     
        return   explode(",",$value);
    }

    protected $casts = [
        'status' => BaseStatusEnum::class
    ];

    public function plugins(): BelongsToMany
    {
        return $this->belongsToMany(Plugin::class, 'plugins');
    }
}
