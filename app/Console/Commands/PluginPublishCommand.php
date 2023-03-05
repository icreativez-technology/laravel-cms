<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\File;
use Botble\Subscription\Models\Plugin;
use BaseHelper;
class PluginPublishCommand extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'cms:plugin:publish';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'This commad use to publish plugins';

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        $list = [];

                    if (File::exists(plugin_path('.DS_Store'))) {
                        File::delete(plugin_path('.DS_Store'));
                    }
                    $plugins = BaseHelper::scanFolder(plugin_path());
                    if (! empty($plugins)) {
                        foreach ($plugins as $plugin) {
                            if (File::exists(plugin_path($plugin . '/.DS_Store'))) {
                                File::delete(plugin_path($plugin . '/.DS_Store'));
                            }
                            $pluginPath = plugin_path($plugin);
                            if (! File::isDirectory($pluginPath) || ! File::exists($pluginPath . '/plugin.json') || $plugin == 'subscription' ) {
                                continue;
                            }
                                    $list['name']  = $plugin;

                                    $plugins = Plugin::updateOrCreate($list);
                            }
                        }
    }
}
