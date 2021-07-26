<?php

namespace App\Http\Controllers;

use App\Cliente;
use App\Http\Controllers\Controller;
use App\Http\Requests\VehiculoRegisterRequest;
use App\Lavado;
use App\Mantenimiento;
use App\Propietario;
use App\Proveedor;
use App\Vehiculo;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Gate;

class VehiculoController extends Controller
{
    protected $total;

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
            return datatables()->of(Vehiculo::query()->with('propietario')->orderBy('id', 'DESC')->get())
                ->addColumn('action', 'admin.vehiculos.actions')
                ->rawColumns(['action'])
                ->addIndexColumn()
                ->make(true);
        }

        $propietarios = Propietario::query()->select('id', 'nombre', 'apellido')->get();

        return view('admin.vehiculos.index', compact('propietarios'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(VehiculoRegisterRequest $request)
    {
        if ($request->expectsJson()) {
            try {
                Vehiculo::create(request()->all());
                return response(json_encode('Vehiculo registrado correctamente', 200));
            } catch (\Throwable $th) {
                return response(json_encode($th->getMessage()), 500);
            }
        }
        return abort(404);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \Transportes\Vehiculo  $vehiculo
     * @return \Illuminate\Http\Response
     */

    public function edit(Request $request, $placa)
    {
        $vehiculo = Vehiculo::with('propietario', 'perfil')->Search($placa)->first();
        if ($vehiculo) {
            $proveedores = Proveedor::get();

            $clientes = Cliente::query()->select('id', 'nombre', 'apellido')->get();
            return view('admin.vehiculos.partials.formUpdate', compact('vehiculo', 'proveedores', 'clientes'));
        }
        abort(404);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        request()->validate(
            [
                // 'nombre' => 'required',
                // 'tipo_identificacion' => 'required',
                // 'placa' => 'required|numeric|digits_between:1,10|unique:company.vehiculos,placa,' . $request->id,
                // 'ciudad' => 'required',
                // 'departamento' => 'required',
                // 'direccion' => 'required',
                // 'telefono' => 'required',

            ],

            [
                // 'placa.digits_between' => 'El numero de placa debe contener entre 1 y 10 numeros',
                // 'placa.unique' => 'El numero de placa ya se encuentra registrado',
            ]
        );
        if ($request->expectsJson()) {
            try {
                $vehiculo = Vehiculo::Search($request->placa)->first();
                $vehiculo->update(request()->all());
                if ($vehiculo) {
                    return response('Vehiculo actualizado correctamente');
                    // return response($vehiculo, 200);

                }
                return response('No hemos podido actualizar el vehiculo', 500);
            } catch (\Throwable $th) {
                return $th->getMessage();
            }
        }
        return abort(404);
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  \Transportes\Vehiculo  $vehiculo
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, $id)
    {
        if ($request->expectsJson()) {
            $vehiculo = Vehiculo::findOrFail($id)->delete();
            return response('Vehiculo deleted successfully.');
        }
        return abort(404);
    }

    public function aggkmView()
    {
        $status = null;
        $vehiculos = Vehiculo::with('lavados')->toBase()->get();
        return view('admin.vehiculos.partials.formRegisterKm', compact('vehiculos'));
    }

    public function aggKm(Request $request)
    {
        foreach (request()->placa as $key => $vehiculo) {

            $vehiculo = Vehiculo::Search($vehiculo)->first();
            $vehiculo->km_actual = request()->km_actual[$key];
            $vehiculo->save();
            $historia = Lavado::where('vehiculo_id', $vehiculo->id)->get()->last();

            //si Existe fecha de ingreso
            if (isset(request()->f_ingreso[$key])) {
                if (empty($historia)) {
                    Lavado::create([
                        'vehiculo_id' => $vehiculo->id,
                        'km_registrado' => request()->km_actual[$key],
                        'f_ingreso' => request()->f_ingreso[$key],
                        'observacion' => request()->observacion[$key]
                    ]);
                } else {
                    if ($historia->km_registrado != request()->km_actual[$key]) {
                        Lavado::create([
                            'vehiculo_id' => $vehiculo->id,
                            'km_registrado' => request()->km_actual[$key],
                            'f_ingreso' => request()->f_ingreso[$key],
                            'observacion' => request()->observacion[$key]
                        ]);
                    }
                }
            }
        }
        return back()->with(
            'status',
            'Kilometraje actualizado Correctamente'
        );
    }

    public function getTotal(Request $request, $id)
    {
        if ($request->expectsJson()) {
            Mantenimiento::where('vehiculo_id', $id)
                ->whereYear('created_at', '=', \Carbon\Carbon::now()->year)
                ->whereYear('created_at', '=', \Carbon\Carbon::now()->year)->get()
                ->each(function ($item) {
                    $this->total = $item->aux + $this->total;
                });

            return response(number_format($this->total), 200);
        }
    }

    public function search(Request $request)
    {


        $vehiculo = Vehiculo::with('propietario', 'perfil')->where('placa', request()->get('query'))->first();
        if ($vehiculo) {
            $proveedores = Proveedor::query()->select('id', 'nombre', 'apellido')->get();
            $clientes = Cliente::query()->select('id', 'nombre', 'apellido')->get();
            return view('admin.vehiculos.partials.formUpdate', compact('vehiculo', 'proveedores', 'clientes'));
        }
        abort(404);
    }
}
