<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\File;
use BaseHelper;
class VendorPlanPublishCommand extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'cms:vendor:plans:publish';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'This commad is use to publish vendor plans';

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        $dirPath = (plugin_path().'/marketplace/resources/views/themes/dashboard/subscriptions');
        if (!File::isDirectory($dirPath)) {
            File::makeDirectory($dirPath,0777,true,true);
        }
    }
}
