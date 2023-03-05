<?php

namespace Botble\Subscription\Models;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Models\BaseModel;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Plugin extends BaseModel
{
    protected $table = 'plugins';

    protected $fillable = [
        'name'
    ];

    protected $casts = [
        'status' => BaseStatusEnum::class
    ];

}
