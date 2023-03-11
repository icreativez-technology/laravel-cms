<?php

namespace Botble\Marketplace\Http\Controllers\Fronts;

use Botble\Base\Http\Controllers\BaseController;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Ecommerce\Repositories\Interfaces\ShippingInterface;
use Botble\Marketplace\Tables\VendorSubscriptionTable;
use Botble\Subscription\Models\Subscription;
use Botble\Payment\Supports\PaymentHelper;
use Illuminate\Support\Arr;
use Illuminate\Http\Request;
use MarketplaceHelper;
use EcommerceHelper;

class VendorSubscriptionController extends BaseController
{

    protected ShippingInterface $shippingRepository;

    public function __construct(ShippingInterface $shippingRepository) {
        $this->shippingRepository = $shippingRepository;
    }

    public function index(VendorSubscriptionTable $VendorSubscriptionTable)
    {
        page_title()->setTitle(trans('plugins/marketplace::marketplace.vendors_subscription_plans'));

        return $VendorSubscriptionTable->render(MarketplaceHelper::viewPath('dashboard.table.base'));
    }

    public function plans()
    {
        $monthlyPlan = false;
        $yearlyPlan  = false;
        $subscription_plans =  Subscription::get();
        foreach($subscription_plans as $plan){
            if($plan['monthly_amount']){
                $monthlyPlan = true;
            }if($plan['yearly_amount']){
                $yearlyPlan = true;
            }
        }
        //dd($subscription_plans);
        return MarketplaceHelper::view('dashboard.plans', compact('subscription_plans','monthlyPlan','yearlyPlan'));
    }

    public function purchasePlan(Request $request) {
        
        $plan  = $request->plane;
        return MarketplaceHelper::view('dashboard.subscriptions.checkout', compact('plan'));
    }

    public function postCheckout(Request $request,BaseHttpResponse $response) {
        
        $token = $request->_token;
        $paymentMethod = $request->input('selected_payment_method');
        if ($paymentMethod) {
            session()->put('selected_payment_method', $paymentMethod);
        }

        $paymentData = [
            'error' => false,
            'message' => false,
            'amount' => (float)format_price(100, null, true),
            'currency' => strtoupper(get_application_currency()->title),
            'type' => $request->input('selected_payment_method'),
            'charge_id' => null,
        ];
    

        $paymentData = apply_filters(PAYMENT_FILTER_PAYMENT_DATA_FOR_SUBSCRIPTION, $paymentData, $request);

        if ($checkoutUrl = Arr::get($paymentData, 'checkoutUrl')) {
            return $response
                ->setError($paymentData['error'])
                ->setNextUrl($checkoutUrl)
                ->setData(['checkoutUrl' => $checkoutUrl])
                ->withInput()
                ->setMessage($paymentData['message']);
        }

       // dd($paymentData);

        // if ($paymentData['error'] || ! $paymentData['charge_id']) {
        //     return $response
        //         ->setError()
        //         ->setNextUrl(PaymentHelper::getCancelURL($token))
        //         ->withInput()
        //         ->setMessage($paymentData['message'] ?: __('Checkout error!'));
        // }

        return $response
            ->setNextUrl(PaymentHelper::getRedirectURL($token))
            ->setMessage(__('Checkout successfully!'));
    }
}
