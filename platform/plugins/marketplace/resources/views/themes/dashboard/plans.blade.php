@extends(MarketplaceHelper::viewPath('dashboard.layouts.master'))
@section('content')
<div class="pricing-container">
		<div class="pricing-switcher">
			<p class="fieldset">
				@if($monthlyPlan)
				<input type="radio" name="duration-1" value="monthly" id="monthly-1" checked>
				<label for="monthly-1">Monthly</label>
				@endif
				@if($yearlyPlan)
				<input type="radio" name="duration-1" value="yearly" id="yearly-1">
				<label for="yearly-1">Yearly</label>
				@endif
				@if($monthlyPlan && $yearlyPlan)
				<span class="switch"></span>
				@endif
			</p>
		</div>
		<ul class="pricing-list bounce-invert">
         @if($subscription_plans)
          @foreach($subscription_plans as $plan)
			<li>
				<ul class="pricing-wrapper">
					@if($monthlyPlan)
                    <li data-type="monthly" class="is-visible">
						<header class="pricing-header">
							<h2>{{ $plan['name'] }}</h2>
							<div class="price">
								<span class="currency">$</span>
								<span class="value">{{ $plan['monthly_amount'] }}</span>
								<span class="duration">mo</span>
							</div>
						</header>
						<div class="pricing-body">
							<ul class="pricing-features">
								<li><em>{{ $plan['product_upload_limit'] }}</em> Product Upload Limit</li>
								<li><em>{{ $plan['monthly_duration'] }}</em> Days Duration</li>
								<li><em>{{ count($plan['addons']) }}</em>&nbsp;&nbsp;Number Of Addons</li>
								<li><em>1</em> Image per Product</li>
								<li><em>Unlimited</em> Bandwidth</li>
								<li><em>24/7</em> Support</li>
							</ul>
						</div>
						<footer class="pricing-footer">
							<input type="hidden" name="monthly" id="{{ $plan['id'] }}">
							<a class="select" href="plans/purchase?plane=monthly" >Purchase Package</a>
						</footer>
					</li>
					@endif
					@if($yearlyPlan)
					<li data-type="yearly" class="is-hidden">
						<header class="pricing-header">
							<h2>{{ $plan['name'] }}</h2>
							<div class="price">
								<span class="currency">$</span>
								<span class="value">{{ $plan['yearly_amount'] }}</span>
								<span class="duration">mo</span>
							</div>
						</header>
						<div class="pricing-body">
							<ul class="pricing-features">
								<li><em>{{ $plan['product_upload_limit'] }} too </em> Product Upload Limit</li>
								<li><em>{{ $plan['yearly_duration'] }}</em> Days Duration</li>
								<li><em>{{ count($plan['addons']) }}</em>&nbsp;&nbsp;Number Of Addons</li>
								<li><em>1</em> Image per Product</li>
								<li><em>Unlimited</em> Bandwidth</li>
								<li><em>24/7</em> Support</li>
							</ul>
						</div>
						<footer class="pricing-footer">
							<a class="select" href="plans/purchase?plane=yearly">Purchase Package</a>
						</footer>
					</li>
					@endif
             		
				</ul>
			</li>
            @endforeach
          @endif

		</ul>
</div>
@stop
