<?php

namespace Botble\Subscription\Http\Requests;

use Botble\Support\Http\Requests\Request;

class SubscriptionRequest extends Request
{
    public function rules(): array
    {
        return [
            'name' => 'required',
            'duration' => 'required',
            'product_upload_limit' => 'required',
        ];
    }
}
