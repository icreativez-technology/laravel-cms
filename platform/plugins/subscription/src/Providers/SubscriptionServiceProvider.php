<?php

namespace Botble\Subscription\Providers;

use Botble\Subscription\Models\SubscriptionCategory;
use Botble\Subscription\Repositories\Caches\SubscriptionCategoryCacheDecorator;
use Botble\Subscription\Repositories\Eloquent\SubscriptionCategoryRepository;
use Botble\Subscription\Repositories\Interfaces\SubscriptionCategoryInterface;
use Botble\LanguageAdvanced\Supports\LanguageAdvancedManager;
use Illuminate\Routing\Events\RouteMatched;
use Botble\Base\Traits\LoadAndPublishDataTrait;
use Botble\Subscription\Models\Subscription;
use Botble\Subscription\Repositories\Caches\SubscriptionCacheDecorator;
use Botble\Subscription\Repositories\Eloquent\SubscriptionRepository;
use Botble\Subscription\Repositories\Interfaces\SubscriptionInterface;
use Illuminate\Support\Facades\Event;
use Illuminate\Support\ServiceProvider;
use Language;

class SubscriptionServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    public function register(): void
    {
        $this->app->bind(SubscriptionInterface::class, function () {
            return new SubscriptionCacheDecorator(new SubscriptionRepository(new Subscription()));
        });
    }

    public function boot(): void
    {
        $this
            ->setNamespace('plugins/subscription')
            ->loadHelpers()
            ->loadAndPublishConfigurations(['permissions', 'general'])
            ->loadMigrations()
            ->loadAndPublishTranslations()
            ->loadRoutes()
            ->loadAndPublishViews()
            ->publishAssets();

        $useLanguageV2 = $this->app['config']->get('plugins.subscription.general.use_language_v2', false) &&
            defined('LANGUAGE_ADVANCED_MODULE_SCREEN_NAME');

        if (defined('LANGUAGE_MODULE_SCREEN_NAME')) {
            if ($useLanguageV2) {
                LanguageAdvancedManager::registerModule(Subscription::class, [
                    'name',
                    'duration',
                ]);
                LanguageAdvancedManager::registerModule(SubscriptionCategory::class, [
                    'name',
                ]);
            } else {
                $this->app->booted(function () {
                    Language::registerModule([Subscription::class, SubscriptionCategory::class]);
                });
            }
        }

        Event::listen(RouteMatched::class, function () {
            dashboard_menu()
                ->registerItem([
                    'id' => 'cms-plugins-subscription',
                    'priority' => 5,
                    'parent_id' => null,
                    'name' => 'plugins/subscription::subscription.name',
                    'icon' => 'fa fa-telegram',
                    'url' => route('subscription.index'),
                    'permissions' => ['subscription.index'],
                ])
                ->registerItem([
                    'id' => 'cms-plugins-subscription-list',
                    'priority' => 0,
                    'parent_id' => 'cms-plugins-subscription',
                    'name' => 'plugins/subscription::subscription.all',
                    'icon' => null,
                    'url' => route('subscription.index'),
                    'permissions' => ['subscription.index'],
                ]);
        });

        $this->app->register(HookServiceProvider::class);
        $this->app->register(EventServiceProvider::class);
    }
}
