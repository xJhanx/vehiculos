<?php

namespace App\Http\Controllers;

use App\Exports\discriminadoMesIndividual;
use App\Exports\discriminadoYearIndividual;
use App\Exports\globalAnualExport;
use App\Exports\globalMesExport;
use App\Exports\PlanExport;
use App\InformeMG;
use App\Mantenimiento;
use App\Vehiculo;
use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel;

class InformeMGController extends Controller
{

    public function __construct()
    {
        $this->middleware(['auth', 'database']);
    }


    // protected $totalesmes = array();
    // protected $totalesyear = array();

    // /**
    //  * Display a listing of the resource.
    //  *
    //  * @return \Illuminate\Http\Response
    //  */
    // public function mg()
    // {
    //     Vehiculo::get()->each(function ($vehiculo, $key) {
    //         array_push($this->totalesmes, array(
    //             'vehiculo' => $vehiculo->placa,

    //             'gastosTotalesMesIndividual' =>
    //             Mantenimiento::where('vehiculo_id', $vehiculo->id)
    //                 ->whereMonth('created_at', '=', \Carbon\Carbon::now()->month)->sum('subtotal'),

    //             'fechaRegistrado' =>
    //             Mantenimiento::where('vehiculo_id', $vehiculo->id)
    //                 ->whereMonth('created_at', '=', \Carbon\Carbon::now()->month)->pluck('fecha_ejecutado'),

    //             'gastosMesIndividual' =>
    //             Mantenimiento::where('vehiculo_id', $vehiculo->id)
    //                 ->whereMonth('created_at', '=', \Carbon\Carbon::now()->month)->pluck('subtotal'),
    //             'tipo_mantenimiento' =>
    //             Mantenimiento::where('vehiculo_id', $vehiculo->id)
    //                 ->whereMonth('created_at', '=', \Carbon\Carbon::now()->month)->orderBy('tipo', 'DESC')->pluck('tipo'),
    //             'proveedor' =>
    //             Mantenimiento::with('proveedor')->where('vehiculo_id', $vehiculo->id)
    //                 ->whereMonth('created_at', '=', \Carbon\Carbon::now()->month)->get()->pluck('proveedor.fullname'),
    //         ));
    //     });
    //     $mesinformes = $this->totalesmes;
    //     return view('admin.informes.mesindex', compact('mesinformes'));
    // }

    // public function yg()
    // {
    //     Vehiculo::get()->each(function ($vehiculo, $key) {
    //         array_push($this->totalesyear, array(
    //             'vehiculo' => $vehiculo->placa,

    //             'fechaRegistrado' =>
    //             Mantenimiento::where('vehiculo_id', $vehiculo->id)
    //                 ->whereMonth('created_at', '=', \Carbon\Carbon::now()->month)->pluck('fecha_ejecutado'),

    //             'gastosTotalesMesIndividual' =>
    //             Mantenimiento::where('vehiculo_id', $vehiculo->id)
    //                 ->whereYear('created_at', '=', \Carbon\Carbon::now()->year)->sum('subtotal'),
    //             'gastosMesIndividual' =>
    //             Mantenimiento::where('vehiculo_id', $vehiculo->id)
    //                 ->whereYear('created_at', '=', \Carbon\Carbon::now()->year)->pluck('subtotal'),
    //             'tipo_mantenimiento' =>
    //             Mantenimiento::where('vehiculo_id', $vehiculo->id)
    //                 ->whereYear('created_at', '=', \Carbon\Carbon::now()->year)->orderBy('tipo', 'DESC')->pluck('tipo'),
    //             'proveedor' =>
    //             Mantenimiento::with('proveedor')->where('vehiculo_id', $vehiculo->id)
    //                 ->whereYear('created_at', '=', \Carbon\Carbon::now()->year)->get()->pluck('proveedor.fullname'),
    //         ));
    //     });
    //     $yearinformes = $this->totalesyear;
    //     return view('admin.informes.yearindex', compact('yearinformes'));
    // }

    public function vistaMes()
    {
        $vehiculos = Vehiculo::query()->orderBy('id', 'DESC')->toBase()->get();
        return view('admin.informes.vehiculosMes', compact('vehiculos'));
    }

    public function vistaAnual()
    {
        $vehiculos = Vehiculo::query()->orderBy('id', 'DESC')->toBase()->get();
        return view('admin.informes.vehiculosYear', compact('vehiculos'));
    }

    public function vistaPlanAnual()
    {
        $vehiculos = Vehiculo::query()->orderBy('id', 'DESC')->toBase()->get();
        return view('admin.informes.planYear', compact('vehiculos'));
    }

    public function reporteDescargaMes(Request $request)
    {
        return Excel::download(new discriminadoMesIndividual(request()->vehiculo_id, request()->mes, request()->anio), 'gastosMensuales.xlsx');
    }

    public function reporteDescargaMesGlobal(Request $request)
    {
        return Excel::download(new globalMesExport(request()->mes), 'gastosMesGlobal.xlsx');
    }

    public function reporteDescargaYear(Request $request)
    {
            return Excel::download(new discriminadoYearIndividual(request()->vehiculo_id, request()->year), 'gastosAnuales.xlsx');
    }

    public function reporteDescargaYearGlobal(Request $request)
    {
        return Excel::download(new globalAnualExport(request()->year), 'gastosYearGlobal.xlsx');
    }

    public function reportePlan()
    {
        return Excel::download(new PlanExport(request()->all()), 'planVehiculo.xlsx');
    }

}
