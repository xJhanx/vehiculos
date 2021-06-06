<?php

namespace App\Http\Controllers;

use App\NotifyFecha;
use App\Recomendacion;
use App\Vehiculo;
use Carbon\Carbon as CarbonCarbon;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\DB;

class NotifyFechaController extends Controller
{
    public $km = 0;
    public $fc = 0;
    public $dias = 0;

    public function __construct()
    {
        $this->middleware(['auth', 'database']);
    }
    



    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {



        if (request()->expectsJson()) {

            $base = Carbon::now();
            $date =  $base->addDay(8)->format('Y-m-d');
            $opera =  $base->addDay(60)->format('Y-m-d');

            return datatables()->of(Vehiculo::where('vigencia_tarjeta_operaciones', '<', $opera)

                ->orWhere('vigencia_tecnomecanica', '<', $date)
                ->orWhere('vigencia_soat', '<', $date)
                ->orWhere('vigencia_poliza_tr', '<', $date)
                ->orWhere('vigencia_poliza_ct', '<', $date)
                ->orWhere('vigencia_poliza_ex_ct', '<', $date)->get())
                ->addColumn('action', 'admin.notifys.actions')
                ->rawColumns(['action'])
                ->addIndexColumn()

                ->setRowClass(function ($vehiculo) {
                    $limite = Carbon::now();
                    $baseAll =  $limite->addDay(8)->format('Y-m-d');
                    $baseOp =  $limite->addDay(60)->format('Y-m-d');

                    if ($vehiculo->vigencia_tarjeta_operaciones < $baseOp) {
                        return 'bg-info';
                    }
                    if ($vehiculo->vigencia_tecnomecanica < $baseAll) {
                        return 'text-info';
                    }
                    if ($vehiculo->vigencia_soat < $baseAll) {
                        return 'text-success';
                    }
                    if ($vehiculo->vigencia_poliza_tr < $baseAll) {
                        return 'bg-danger';
                    }
                    if ($vehiculo->vigencia_poliza_ct < $baseAll) {
                        return 'bg-warning';
                    }
                    if ($vehiculo->vigencia_poliza_ex_ct < $baseAll) {
                        return 'text-warning';
                    }
                })
                ->make(true);
        }

        return view('admin.notifys.notifyFecha');
    }

    public function mostrarfc()
    {
        if (Auth::check()) {
            Config::set('database.connections.company.database', Auth::user()->company);
            DB::purge('company');
            DB::reconnect();

            $base = Carbon::now();
            $date =   $base->addDay(8)->format('Y-m-d');
            $opera =  $base->addDay(60)->format('Y-m-d');

            $this->fc = Vehiculo::where('vigencia_tarjeta_operaciones', '<', $opera)
                ->orWhere('vigencia_tecnomecanica', '<', $date)
                ->orWhere('vigencia_soat', '<', $date)
                ->orWhere('vigencia_poliza_tr', '<', $date)
                ->orWhere('vigencia_poliza_ct', '<', $date)
                ->orWhere('vigencia_poliza_ex_ct', '<', $date)->count();

            return $this->fc;
        }
    }

    public function mostrarkm()
    {
        if (Auth::check()) {
            Config::set('database.connections.company.database', Auth::user()->company);
            DB::purge('company');
            DB::reconnect();
            try {

                Vehiculo::all()->each(function ($vehiculo) {
                    Recomendacion::with('parte')->where('vehiculo_id', $vehiculo->id)->get()
                        ->each(function ($recomendacion) use ($vehiculo) {
                            if($recomendacion->parte != null){
                            if ($recomendacion->parte->evaluacion == 'kms') {
                                if (($vehiculo->km_actual + 1500) >= $recomendacion->km_siguiente) {
                                    $this->km++;
                                }
                            }}
                        });
                });

                return $this->km;
            } catch (\Throwable $th) {
                return $th->getMessage();
            }
        }
    }

    public function mostrardias()
    {
        if (Auth::check()) {
            Config::set('database.connections.company.database', Auth::user()->company);
            DB::purge('company');
            DB::reconnect();
            try {

                Vehiculo::all()->each(function ($vehiculo) {
                    Recomendacion::with('parte')->where('vehiculo_id', $vehiculo->id)->get()
                        ->each(function ($recomendacion) use ($vehiculo) {
                            if($recomendacion->parte != null){
                            if ($recomendacion->parte->evaluacion == 'dias') {
                                if ((Carbon::now()->addDay(8)) >= $recomendacion->fecha_siguiente) {
                                    $this->dias++;
                                }
                            }}
                        });
                });

                return $this->dias;
            } catch (\Throwable $th) {
                return $th->getMessage();
            }
        }
    }
}
