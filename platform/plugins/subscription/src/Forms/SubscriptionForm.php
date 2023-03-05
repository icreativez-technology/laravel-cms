<?php

namespace Botble\Subscription\Forms;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Forms\FormAbstract;
use Botble\Subscription\Http\Requests\SubscriptionRequest;
use Botble\Subscription\Models\Subscription;
use Botble\Subscription\Models\Plugin;

class SubscriptionForm extends FormAbstract
{

    public function buildForm(): void
    {

        $this
            ->setupModel(new Subscription())
            ->setValidatorClass(SubscriptionRequest::class)
            ->withCustomFields()
            ->add('name', 'text', [
                'label' => trans('plugins/subscription::subscription.subscription_name'),
                'label_attr' => ['class' => 'control-label required']
            ])
            ->add('amount', 'number', [
                'label' => trans('plugins/subscription::subscription.amount'),
                'label_attr' => ['class' => 'control-label required']
            ])
            ->add('product_upload_limit', 'number', [
                'label' => trans('plugins/subscription::subscription.product_upload_limit'),
                'label_attr' => ['class' => 'control-label required']
            ])
            ->add('duration', 'number', [
                'label' => trans('plugins/subscription::subscription.duration'),
                'label_attr' => ['class' => 'control-label required']
            ])
            ->add('addons', 'select', [
                'label' => trans('plugins/subscription::subscription.addons'),
                'label_attr' => ['class' => 'control-label'],
                'attr' => [
                    'multiple' =>'multiple'
                ],
                'choices' => ['' => trans('plugins/subscription::subscription.select_addons')] + app(Plugin::class)->pluck('name', 'id')->toArray()
            ])
            ->add('status', 'customSelect', [
                'label' => trans('core/base::tables.status'),
                'label_attr' => ['class' => 'control-label required'],
                'choices' => BaseStatusEnum::labels(),
            ])
            ->add('subscription_logo', 'mediaImage', [
                'label' => trans('core/base::forms.image'),
                'label_attr' => ['class' => 'control-label'],
            ])
            ->setBreakFieldPoint('status');
    }
}
