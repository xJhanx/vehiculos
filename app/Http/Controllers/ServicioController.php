<?php

namespace App\Http\Controllers;

use App\Conductor;
use App\DesignadoByCompany;
use App\Servicio;
use App\Http\Requests\ServicioSaveRequest;
use App\Http\Traits\getEmpresa;
use App\Passenger;
use App\Vehiculo;
use Carbon\Carbon;
use Exception;
use Illuminate\Database\QueryException;
use Illuminate\Http\Request;
use Illuminate\Log\Logger;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class ServicioController extends Controller
{
    use getEmpresa;

    public function __construct()
    {
        $this->middleware(['auth', 'database']);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {

        if ($request->expectsJson()) {

            if (Auth::user()->role == 'conductor') {
                $conductor =   Conductor::findOrfail(Auth::user()->funcionario_id);
                return datatables(Servicio::where('conductor_id', $conductor->id)->where('estado', 'Servicio realizado')->latest())
                    ->addColumn('action', 'admin.servicios.actions')
                    ->rawColumns(['action'])
                    ->addIndexColumn()
                    ->toJson();
            }

            return datatables(Servicio::where('empresa_id', $this->getEmpresa())->where('estado', 'Servicio realizado')->latest())
                ->addColumn('action', 'admin.servicios.actions')
                ->rawColumns(['action'])
                ->addIndexColumn()
                ->toJson();
        }

        Log::critical(json_encode(Auth::user()->name));
        return view('admin.servicios.index');
    }

    /**
     * store passengers on service 
     * @param Request
     * @return \Illuminate\Http\Response
     */
    public function savePassengersOnService()
    {
        $data = request()->get('id_servicio');
        $idPassengers = request()->get('passengers');

        $servicio = Servicio::find($data);

        foreach ($idPassengers as $id) {
            if (!$servicio->passengers()->where('passengers.id', $id)->exists()) {
                $servicio->passengers()->save(Passenger::findOrFail($id));
            }
        }
        return response()->json('Pasajeros registrados correctamente');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ServicioSaveRequest $request)
    {

        DB::beginTransaction();

        return DB::transaction(function () {
            try {

                $data = request()->get('data');
                $idPassengers = request()->get('passengers');

                $estado = 'Solicitado por el cliente';

                $servicio = new Servicio;
                $servicio->date = $data['date'];
                $servicio->created_date = Carbon::now();
                $servicio->hour = $data['hour'];
                $servicio->punto_inicio = $data['punto_inicio'];
                $servicio->punto_fin = $data['punto_fin'];
                $servicio->observaciones = $data['observaciones'];
                $servicio->estado =  $estado;
                $servicio->empresa_id = $this->getEmpresa();
                $servicio->saveOrFail();

                if ($idPassengers > 0) {
                    if ($idPassengers > 1) {
                        foreach ($idPassengers as $id) {
                            $servicio->passengers()->save(Passenger::findOrFail($id));
                        }
                    } else {
                        $servicio->passengers()->save(Passenger::findOrFail($idPassengers));
                    }
                } else {
                    throw new Exception('sin pasajeros');
                }
            } catch (QueryException $e) {
                DB::rollback();
                $servicio->delete();
                return [$e->getMessage(), $e->getCode()];
            }
            return back()->with('exito', 'Servicio guardado correctamente, cuando este sea aceptado se te notificará via email');
        });
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \Transportes\Servicio  $cliente
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request, $id)
    {
        if ($request->expectsJson()) {
            $servicio = Servicio::findOrFail($id);
            return response($servicio, 200);
        }
        return abort(404);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \Transportes\Servicio  $cliente
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request, $id)
    {
        if ($request->expectsJson()) {
            $servicio = Servicio::with('passengers')->findOrFail($id);
            return datatables($servicio->passengers)
                ->addColumn('action', 'admin.servicios.actions')
                ->rawColumns(['action'])
                ->addIndexColumn()
                ->toJson();
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


        try {

            $data = request()->get('data');
            $estado = $data['estado'];
            $servicio = Servicio::find(request()->get('id'));


            if (isset($data['date']) &&  $data['date'] != null && $data['date'] != '') {
                $servicio->date = $data['date'];
            }
            if (isset($data['observaciones_conductor']) &&  $data['observaciones_conductor'] != null && $data['observaciones_conductor'] != '') {
                $servicio->observaciones_conductor =  $data['observaciones_conductor'];
            }
            if (isset($data['hour']) && $data['hour'] != null &&  $data['hour'] != '') {
                $servicio->hour = $data['hour'];
            }
            if (isset($data['punto_inicio']) && $data['punto_inicio'] != null &&  $data['punto_inicio'] != '') {
                $servicio->punto_inicio = $data['punto_inicio'];
            }
            if (isset($data['punto_fin']) &&  $data['punto_fin'] != null && $data['punto_fin'] != '') {
                $servicio->punto_fin = $data['punto_fin'];
            }
            if (isset($data['observaciones']) &&  $data['observaciones'] != null && $data['observaciones'] != '') {
                $servicio->observaciones = $data['observaciones'];
            }
            if (isset($data['estado']) && $data['estado'] != null &&  $data['estado'] != '') {
                $servicio->estado =  $estado;
            }
            if (isset($data['conductor_id']) &&  $data['conductor_id'] != null && $data['conductor_id'] != '') {
                $servicio->conductor_id =  $data['conductor_id'];
            }
            if (isset($data['vehiculo_id']) &&  $data['vehiculo_id'] != null && $data['vehiculo_id'] != '') {
                $servicio->vehiculo_id =  $data['vehiculo_id'];
            }
            if (isset($data['costo']) && $data['costo'] != null &&  $data['costo'] != '') {
                $servicio->costo =  $data['costo'];
            }

            $servicio->save();


            return back()->with('exito', 'Servicio guardado correctamente, cuando este sea aceptado se te notificará via email');
        } catch (QueryException $e) {
            return reponse()->json([$e->getMessage(), $e->getCode()]);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \Transportes\Servicio  $cliente
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, $id)
    {
        if ($request->expectsJson()) {
            $cliente = Servicio::findOrFail($id)->delete();
            return response('Servicio deleted successfully.');
        }

        return abort(404);
    }
    public function detalles(Request $request, $id)
    {
        return view('admin.servicios.show', [
            'conductores' =>  Conductor::with('vehiculos')->get(['nombre', 'apellido',  'identificacion', 'id']),
            'servicio' =>  Servicio::with(['conductor', 'conductor.vehiculos'])->find($id)
        ]);
/*         $r = Servicio::with(['conductor', 'conductor.vehiculos'])->find($id);
        return $r->conductor_id; */
    }
    public function detalleSelect($id)
    {
        /* return  Servicio::with(['conductor', 'conductor.vehiculos'])->find($id); */
       /*  return DB::select("select v.placa,cv.vehiculo_id FROM vehiculos v INNER JOIN 
        conductor_vehiculo cv ON v.id=cv.vehiculo_id WHERE cv.conductor_id = $id"); */
        return DB::connection('company')->select('select v.placa,cv.vehiculo_id FROM vehiculos v INNER JOIN 
        conductor_vehiculo cv ON v.id=cv.vehiculo_id WHERE cv.conductor_id ='.$id);

    }

    public function saveSolicitud(Request $request)
    {
        Servicio::create($request->all());
    }
    public function showPassengers(Request $request, $id)
    {
        if ($request->expectsJson()) {
            return datatables(Servicio::findOrFail($id)->passengers())
                ->addColumn('action', 'admin.servicios.actions')
                ->rawColumns(['action'])
                ->addIndexColumn()
                ->toJson();
        }

        return view('admin.servicios.index');
    }
}
