@extends(MarketplaceHelper::viewPath('dashboard.layouts.master'))
@section('content')
@section('title')
{{ __('Checkout') }}
@stop


@php
$token = 'eyJpdiI6ImRDM29OL1F2VFpPSzdOYTJIQitkb3c9PSIsInZhbHVlIjoiaU5laTE1SFJldmhWTkE2Z242THBCdkpoZ0VJWXg5MDB4NDFzdE9mWklEb3htY3Z5OHlrREZnMDUwaDlpcXF6Z1NZbkdtT2xUMjdFYlNTRzQ3MjVlZGlDdHU4cjkyaEhuZEJDNDdoaGtrdVZ6c2R5bHBsT0VPTWI0NVFPVGkvck0iLCJtYWMiOiIwNWZhOWQyODhhOTJkNDdkYjIxOTg4NGZlZjU1NDMxZjQ4MTJkNzgzMDdjYjk1ZDliZTNhM2EzYWFhYTZlNzgyIiwidGFnIjoiIn0%3D'
@endphp
                    {!! Form::open(['route' => ['marketplace.vendor.checkout',$token], 'class' => 'checkout-form payment-checkout-form', 'id' => 'checkout-form']) !!}       
                             <div class="position-relative">
                                <div class="payment-info-loading" style="display: none;">
                                    <div class="payment-info-loading-content">
                                        <i class="fas fa-spinner fa-spin"></i>
                                    </div>
                                </div>
                                <h5 class="checkout-payment-title">{{ __('Payment method') }}</h5>
                                <input type="hidden" name="currency" value="{{ strtoupper(get_application_currency()->title) }}">
                                {!! apply_filters(PAYMENT_FILTER_PAYMENT_PARAMETERS, null) !!}
                                <ul class="list-group list_payment_method">
                                    @php
                                        $selected = session('selected_payment_method');
                                        $default = \Botble\Payment\Supports\PaymentHelper::defaultPaymentMethod();
                                        $selecting = $selected ?: $default;
                                    @endphp
                                    @if ($default)
                                        {!! apply_filters(PAYMENT_FILTER_ADDITIONAL_PAYMENT_METHODS, null, [
                                                'amount'    => format_price(30, null, true),
                                                'currency'  => strtoupper(get_application_currency()->title),
                                                'name'      => null,
                                                'selected'  => $selected,
                                                'default'   => $default,
                                                'selecting' => $selecting,
                                            ]) !!}
                                    @endif
                     </ul>

                          <div class="form-group mb-3">
                                <div class="row">
                                    <div class="col-md-6 d-none d-md-block" style="line-height: 53px">
                                        <a class="text-info" href="{{ route('marketplace.vendor.plans') }}"><i class="fas fa-long-arrow-alt-left"></i> <span class="d-inline-block back-to-cart">{{ __('Back to Plans') }}</span></a>
                                    </div>
                                    <div class="col-md-6 checkout-button-group">
                                           <button type="submit" class="btn payment-checkout-btn payment-checkout-btn-step float-end text-info" data-processing-text="{{ __('Processing. Please wait...') }}" data-error-header="{{ __('Error') }}">
                                           <span class="d-inline-block"><strong>{{ __('Purchase Plan') }}</b></strong> <i class="fas fa-long-arrow-alt-right"></i>
                                            </button>
                                    </div>
                                </div>
                                <div class="d-block d-md-none back-to-cart-button-group">
                                    <a class="text-info" href="{{ route('marketplace.vendor.plans') }}">
                                        <i class="fas fa-long-arrow-alt-left"></i>
                                        <span class="d-inline-block">{{ __('Back to Plans') }}</span>
                                    </a>
                                </div>
                            </div>
            </div>
            {!! Form::close() !!}
@stop

