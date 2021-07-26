<?php

namespace App\Http\Controllers;

use App\Autoparte;
use App\HistorialRE;
use App\Mantenimiento;
use App\Parte;
use App\Proveedor;
use App\Recomendacion;
use App\Vehiculo;
use Carbon\Carbon as CarbonCarbon;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;

class RecomendacionController extends Controller
{

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
        if (request()->ajax()) {

            return datatables()->of(Vehiculo::query()->with('propietario'))
                ->addColumn('action', 'admin.especificaciones.actions')
                ->rawColumns(['action'])
                ->addIndexColumn()
                ->make(true);
        }

        return view('admin.especificaciones.index');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        if ($request->expectsJson()) {
            try {

                $fecha_siguiente = null;
                $km_siguiente = null;

                $vehiculo = Vehiculo::findOrFail(request()->get('vehiculo_id'));
                $autoparte = Parte::findOrFail(request()->get('parte_id'));
                if ($autoparte->evaluacion == 'dias') {
                    $fecha_siguiente = Carbon::createFromDate(request()->get('fecha_programado'))->addDay($autoparte->frecuencia);
                }
                if ($autoparte->evaluacion == 'kms') {
                    
                    if ($vehiculo->km_actual == "") {
                        return response('Debes registrar KM de vehiculo ', 200);
                }
                
                    $km_siguiente = ($autoparte->frecuencia + $vehiculo->km_actual);
                }

                $recomendacion = Recomendacion::create([
                    'vehiculo_id' => $vehiculo->id,
                    'parte_id' => $autoparte->id,
                    'seguimiento' => request()->get('seguimiento'),
                    'observacion' => request()->get('observacion'),
                    'fecha_programado' => request()->get('fecha_programado'),
                    'km_actual' => $vehiculo->km_actual,
                    'fecha_actual' => Carbon::now(),
                    'km_siguiente' => $km_siguiente,
                    'cant_programado' => 1,
                    'cant_ejecutado' => 0,
                    'fecha_siguiente' => $fecha_siguiente,
                ]);

                if ($recomendacion) {
                    return response('Recomendacion registrada correctamente', 200);
                }
                return response('No hemos podido registrar el recomendacion', 500);
            } catch (\Throwable $th) {
                return $th->getMessage();
            }
        }
        return abort(404);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \Transportes\Recomendacion  $recomendacion
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request, $id)
    {
        if ($request->expectsJson()) {
            $recomendacion = Recomendacion::findOrFail($id);
            return response($recomendacion, 200);
        }
        return abort(404);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        if ($request->expectsJson()) {
            try {


                $fecha_siguiente = null;
                $km_siguiente = null;

                $recomendacion_old = Recomendacion::findOrFail($request->id);
                $recomendacion = Recomendacion::findOrFail($request->id);
                $vehiculo = Vehiculo::findOrFail($recomendacion->vehiculo_id);
                $autoparte = Parte::findOrFail($recomendacion->parte_id);


                if (request()->get('seguimiento') == 'Programado') {

                    if ($autoparte->evaluacion == 'dias') {
                        $fecha_siguiente = Carbon::createFromDate(request()->get('fecha_ejecutado'))->addDay($autoparte->frecuencia);
                    }
                    if ($autoparte->evaluacion == 'kms') {
                        $km_siguiente = ($this->normalizar(request()->get('km_actual')) + $autoparte->frecuencia);
                    }
                    if (!request()->get('fecha_ejecutado')) {
                        $recomendacion->fecha_programado = Carbon::now();
                    } else {
                        $recomendacion->fecha_programado = request()->get('fecha_ejecutado');
                    }

                    $recomendacion->vehiculo_id = $vehiculo->id;
                    $recomendacion->parte_id = $autoparte->id;
                    $recomendacion->seguimiento = request()->get('seguimiento');
                    $recomendacion->observacion = request()->get('observacion');
                    $recomendacion->km_actual = $vehiculo->km_actual;
                    $recomendacion->fecha_actual = Carbon::now();
                    $recomendacion->km_siguiente = $km_siguiente;
                    $recomendacion->fecha_siguiente = $fecha_siguiente;
                    $recomendacion->cant_programado += 1;
                    $recomendacion->saveOrFail();
                }

                if (request()->get('seguimiento') == 'No Programado') {
                    $recomendacion->vehiculo_id = $vehiculo->id;
                    $recomendacion->parte_id = $autoparte->id;
                    $recomendacion->seguimiento = request()->get('seguimiento');
                    $recomendacion->observacion = request()->get('observacion');
                    $recomendacion->fecha_programado = Carbon::now();
                    $recomendacion->km_actual = $vehiculo->km_actual;
                    $recomendacion->fecha_actual = Carbon::now();
                    $recomendacion->km_siguiente = null;
                    $recomendacion->fecha_siguiente = null;
                    $recomendacion->saveOrFail();
                }

                if ($recomendacion) {
                    if (request()->get('exec') == "on") {

                        try {
                            $mantenimiento = new Mantenimiento();
                            $mantenimiento->descripcion = $autoparte->nombre . ':' . request()->get('observacion');
                            $mantenimiento->proveedor_id = $request->proveedor_id;
                            $mantenimiento->factura = $request->factura;
                            $mantenimiento->tipo = $request->tipo;
                            $mantenimiento->vehiculo_id = $vehiculo->id;
                            $mantenimiento->subtotal = $request->subtotal;
                            $mantenimiento->fecha_ejecutado = $request->fecha_ejecutado;
                            $mantenimiento->km_actual = $request->km_actual;
                            $mantenimiento->saveOrFail();

                            $historial = new HistorialRE();
                            $historial->parte = $autoparte->nombre;
                            $historial->prioridad = $autoparte->prioridad;
                            $historial->frecuencia = $autoparte->frecuencia;
                            $historial->fuente =  $autoparte->fuente;
                            $historial->km_actual = $vehiculo->km_actual;
                            $historial->estado = 'Ejecutado';
                            $historial->fecha_programado = $recomendacion_old->fecha_programado;
                            $historial->fecha_ejecutado = request()->get('fecha_ejecutado');
                            $historial->recomendacion_id = $recomendacion->id;
                            $historial->observacion = request()->get('observacion');
                            $historial->saveOrFail();
                            $recomendacion->cant_ejecutado += 1;
                            $recomendacion->saveOrFail();
                            return response('Mantenimiento Registrado', 200);
                        } catch (\Throwable $th) {
                            return $th->getMessage();
                        }
                    } else {
                        $historial = new HistorialRE();
                        $historial->parte = $autoparte->nombre;
                        $historial->prioridad = $autoparte->prioridad;
                        $historial->frecuencia = $autoparte->frecuencia;
                        $historial->fuente =  $autoparte->fuente;
                        $historial->km_actual = $vehiculo->km_actual;
                        $historial->estado = 'No Ejecutado';
                        $historial->fecha_programado = $recomendacion_old->fecha_programado;
                        // $historial->fecha_ejecutado = request()->get('fecha_ejecutado');
                        $historial->recomendacion_id = $recomendacion->id;
                        $historial->observacion = request()->get('observacion');
                        $historial->saveOrFail();

                        return response('Mantenimiento Registrado', 200);

                    }
                }
                return response('No hemos podido actualizar el recomendacion', 500);
            } catch (\Throwable $th) {
                return $th->getMessage();
            }
        }
        return abort(404);
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  \Transportes\Recomendacion  $recomendacion
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, $id)
    {
        if ($request->expectsJson()) {
            $recomendacion = Recomendacion::findOrFail($id)->delete();
            return response('Recomendacion deleted successfully.');
        }
        return abort(404);
    }

    public function show(Request $request, $id)
    {

        if ($request->expectsJson()) {

            return datatables()->of(Recomendacion::with('parte')->where('vehiculo_id', $id)
                ->orderBy('id', 'DESC')->get())
                ->addColumn('action', 'admin.recomendaciones.actions')
                ->rawColumns(['action'])
                ->addIndexColumn()
                ->setRowClass(function ($recomendacion) {

                    if ($recomendacion->seguimiento == "Programado") {
                        return 'bg-warning';
                    }
                    if ($recomendacion->seguimiento == "No Programado") {
                        return 'bg-danger';
                    }
                })
                ->make(true);
        }

        $proveedores = Proveedor::get();
        $partes = Parte::toBase()->get();
        $vehiculo = Vehiculo::with('propietario')->find($id);
        return view('admin.especificaciones.show', compact('vehiculo', 'proveedores', 'partes'));
    }

    public function normalizar($dato)
    {
        return str_replace('.', '', $dato);
    }
}
