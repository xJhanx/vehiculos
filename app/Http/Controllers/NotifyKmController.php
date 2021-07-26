<?php

namespace App\Http\Controllers;

use App\NotifyKm;
use App\Recomendacion;
use App\Vehiculo;
use Carbon\Carbon;
use Illuminate\Http\Request;
use PhpParser\Node\Stmt\Return_;

class NotifyKmController extends Controller
{
    public $kmVencimientos = array();
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
            Vehiculo::all()->each(function ($vehiculo) {
                Recomendacion::with('parte')->where('vehiculo_id', $vehiculo->id)->get()
                    ->each(function ($recomendacion) use ($vehiculo) {
                        if($recomendacion->parte != null ){
                        if ($recomendacion->parte->evaluacion == 'kms') {
                            if (($vehiculo->km_actual + 1500) >= $recomendacion->km_siguiente) {

                                array_push($this->kmVencimientos, array(
                                    'placa' => $vehiculo->placa,
                                    'alerta' => $recomendacion->parte->nombre,
                                    'km_actual' => $vehiculo->km_actual,
                                    'frecuencia' => $recomendacion->parte->frecuencia  . '  ' . $recomendacion->parte->evaluacion,
                                    'km_siguiente' => $recomendacion->km_siguiente,
                                    'id' => $vehiculo->id
                                ));
                            }
                       }}
                    });
            });

            return datatables()->of($this->kmVencimientos)
                ->addColumn('action', 'admin.notifys.actionskm')
                ->rawColumns(['action'])
                ->addIndexColumn()->make(true);
        }


        return view('admin.notifys.notifyKm');
    }


    public function dias()
    {
        if (request()->expectsJson()) {
            try {
                Vehiculo::all()->each(function ($vehiculo) {
                    Recomendacion::with('parte')->where('vehiculo_id', $vehiculo->id)->get()
                        ->each(function ($recomendacion) use ($vehiculo) {
                            if($recomendacion->parte != null ){
                            if ($recomendacion->parte->evaluacion == 'dias') {
                                if ((Carbon::now()->addDay(8)) >= $recomendacion->fecha_siguiente) {
                                    array_push($this->kmVencimientos, array(
                                        'placa' => $vehiculo->placa,
                                        'alerta' => $recomendacion->parte->nombre,
                                        'km_actual' => $vehiculo->km_actual,
                                        'frecuencia' => $recomendacion->parte->frecuencia  . '  ' . $recomendacion->parte->evaluacion,
                                        'fecha_siguiente' => date_format($recomendacion->fecha_siguiente, "j-M-Y"),
                                        'id' => $vehiculo->id
                                    ));
                                }
                            }
                            }
                        });
                });
            } catch (\Throwable $th) {
                return $th->getMessage();
            }
            return datatables()->of($this->kmVencimientos)
                ->addColumn('action', 'admin.notifys.actionsdias')
                ->rawColumns(['action'])
                ->addIndexColumn()->make(true);
        }
        return view('admin.notifys.notifyDias');
    }
}
