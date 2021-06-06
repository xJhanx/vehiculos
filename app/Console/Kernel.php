<?php

namespace App\Console;

use App\Mail\NotifyMail;
use App\Recomendacion;
use App\Vehiculo;
use Carbon\Carbon;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Mail;
use Illuminate\Console\Scheduling\Schedule;
use Illuminate\Foundation\Console\Kernel as ConsoleKernel;

class Kernel extends ConsoleKernel
{
    /**
     * The Artisan commands provided by your application.
     *
     * @var array
     */
    protected $commands = [
       
            'App\Console\Commands\sendAlerts',
        
    ];

    /**
     * Define the application's command schedule.
     *
     * @param  \Illuminate\Console\Scheduling\Schedule  $schedule
     * @return void
     */
    protected function schedule(Schedule $schedule)
    {
        $schedule->call(function () {
               
        $companies = DB::connection('main')
            ->table('users')
            ->get();
        $unique = $companies->unique();


        foreach ($unique->values() as $company) {
            Config::set('database.connections.company.database', $company->company);
            DB::purge('company');
            $getByDocument = $this->getByDocument();
            $getByKm = $this->getByKm();
            $getByDias = $this->getByDias();
          }

            try{
                
                  Mail::to('angellphp@gmail.com')->send(new NotifyMail($getByDocument, $getByKm, $getByDias));
                    
            }catch(\Exception $th){

                echo $th->getMessage();
            }
            
        })->everyMinute();
	

    }

    /**
     * Register the commands for the application.
     *
     * @return void
     */
    protected function commands()
    {
        $this->load(__DIR__.'/Commands');
        require base_path('routes/console.php');
    }
    
    
    public function getByDocument()
    {

        try {
            $base = Carbon::now();
            $date =   $base->addDay(8)->format('Y-m-d');
            $opera =  $base->addDay(60)->format('Y-m-d');
            $crititalByDocument = Vehiculo::orWhere('vigencia_tarjeta_operaciones', '<', $opera)
                ->orWhere('vigencia_tecnomecanica', '<', $date)
                ->orWhere('vigencia_soat', '<', $date)
                ->orWhere('vigencia_poliza_tr', '<', $date)
                ->orWhere('vigencia_poliza_ct', '<', $date)
                ->orWhere('vigencia_poliza_ex_ct', '<', $date)->toBase()->get();

            $byTarjeta = collect($crititalByDocument)->filter(function ($vehiculo) use ($opera) {
                return $vehiculo->vigencia_tarjeta_operaciones < $opera && $vehiculo->vigencia_tarjeta_operaciones != null;
            });
            $byTecnomecanica = collect($crititalByDocument)->filter(function ($vehiculo) use ($date) {
                return $vehiculo->vigencia_tecnomecanica < $date && $vehiculo->vigencia_tecnomecanica != null;
            });
            $byPolizaTtr = collect($crititalByDocument)->filter(function ($vehiculo) use ($date) {
                return $vehiculo->vigencia_poliza_tr < $date && $vehiculo->vigencia_poliza_tr != null;
            });
            $byPolizaTtc = collect($crititalByDocument)->filter(function ($vehiculo) use ($date) {
                return $vehiculo->vigencia_poliza_ct < $date && $vehiculo->vigencia_poliza_ct != null;
            });
            $bySoat = collect($crititalByDocument)->filter(function ($vehiculo) use ($date) {
                return $vehiculo->vigencia_soat < $date && $vehiculo->vigencia_soat != null;
            });
            $byPolizaEx = collect($crititalByDocument)->filter(function ($vehiculo) use ($date) {
                return $vehiculo->vigencia_poliza_ex_ct < $date && $vehiculo->vigencia_poliza_ex_ct != null;
            });
            return [
                'byTarjeta' =>  $byTarjeta,
                'byTecnomecanica' =>  $byTecnomecanica,
                'byPolizaTtr' => $byPolizaTtr,
                'byPolizaTtc' => $byPolizaTtc,
                'bySoat' =>  $bySoat,
                'byPolizaEx' => $byPolizaEx,
            ];
        } catch (\Throwable $th) {
            throw $th->getMessage();
        }
    }

    public function getByKm()
    {

        $crititalByKm = array();

        try {
            Vehiculo::all()->each(function ($vehiculo) use ($crititalByKm) {
                Recomendacion::with('parte')->where('vehiculo_id', $vehiculo->id)->get()
                    ->each(function ($recomendacion) use ($vehiculo, $crititalByKm) {
                        if ($recomendacion->parte != null) {
                            if ($recomendacion->parte->evaluacion == 'kms') {
                                if (($vehiculo->km_actual + 1500) >= $recomendacion->km_siguiente) {
                                    array_push($crititalByKm, $vehiculo);
                                }
                            }
                        }
                    });
            });

            return $crititalByKm;
        } catch (\Throwable $th) {
            return $th->getMessage();
        }
    }


    public function getByDias()
    {

        $crititalByDias = array();

        try {

            Vehiculo::all()->each(function ($vehiculo) use ($crititalByDias) {
                Recomendacion::with('parte')->where('vehiculo_id', $vehiculo->id)->get()
                    ->each(function ($recomendacion) use ($vehiculo, $crititalByDias) {
                        if ($recomendacion->parte != null) {
                            if ($recomendacion->parte->evaluacion == 'dias') {
                                if ((Carbon::now()->addDay(8)) >= $recomendacion->fecha_siguiente) {
                                    array_push($crititalByDias, $vehiculo);
                                }
                            }
                        }
                    });
            });

            return $crititalByDias;
        } catch (\Throwable $th) {
            return $th->getMessage();
        }
    }
    
    
    
}