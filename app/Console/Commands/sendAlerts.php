<?php

namespace App\Console\Commands;

use App\Mail\NotifyMail;
use App\Recomendacion;
use App\Vehiculo;
use Carbon\Carbon;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Mail;

class sendAlerts extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'registered:emails';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Un comando bien chido para enviar alertas ';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
    }
    
}
