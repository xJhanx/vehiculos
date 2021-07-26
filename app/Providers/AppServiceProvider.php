<?php

namespace App\Providers;

use App\Recomendacion;
use App\Vehiculo;
use Illuminate\Contracts\Auth\Guard;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        // $this->app->bind('path.public',function(){
        //     return'/www/sgv/public';
        //     });
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */

    public $km = 0;

    public function boot()
    {
        // View::composer('*', function () {
        //     if (Auth::check()) {
        //         Config::set('database.connections.company.database', Auth::user()->company);
        //         DB::purge('company');
        //         DB::reconnect();

        //         $fc = 0;
        //         $base = Carbon::now();
        //         $date =   $base->addDay(5)->format('Y-m-d');
        //         $opera =  $base->addDay(60)->format('Y-m-d');
        //         $fc = Vehiculo::where('vigencia_tarjeta_operaciones', '<', $opera)
        //             ->orWhere('vigencia_tecnomecanica', '<', $date)
        //             ->orWhere('vigencia_soat', '<', $date)
        //             ->orWhere('vigencia_poliza_tr', '<', $date)
        //             ->orWhere('vigencia_poliza_ct', '<', $date)
        //             ->orWhere('vigencia_poliza_ex_ct', '<', $date)->count();

        //         Vehiculo::get('id', 'km_actual')
        //             ->each(function ($vehiculo) {
        //                 Recomendacion::where('vehiculo_id', $vehiculo->id)
        //                     ->get('km_siguiente')
        //                     ->each(function ($recomendacion) use ($vehiculo) {
        //                         if (($vehiculo->km_actual + 1500) >= $recomendacion->km_siguiente) {
        //                             $this->km++;
        //                         }
        //                     });
        //             });

        //         view()->share('km', $this->km);
        //         view()->share('fc', $fc);
        //     }
        // });
    }
}
