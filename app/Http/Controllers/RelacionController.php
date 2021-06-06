<?php

namespace App\Http\Controllers;

use App\Autoparte;
use App\Cliente;
use App\Http\Controllers\Controller;
use App\Mantenimiento;
use App\Propietario;
use App\Proveedor;
use App\Relacion;
use App\Vehiculo;
use Carbon;
use Illuminate\Http\Request;

class RelacionController extends Controller
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
    public function index(Request $request)
    {
        if ($request->expectsJson()) {
            return datatables()->of(Relacion::query()->with('vehiculo', 'autoparte')->orderBy('id', 'DESC')->get())
                ->addColumn('action', 'admin.relaciones.actions')
                ->rawColumns(['action'])
                ->addIndexColumn()
                ->make(true);
        }
        $vehiculos = Vehiculo::toBase()->get();
        $autopartes = Autoparte::get();

        return view('admin.relaciones.index', compact('vehiculos', 'autopartes'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        request()->validate(
            [
                // 'nombre' => 'required',
                // 'tipo_identificacion' => 'required',
                // 'placa' => 'required|numeric|digits_between:1,10|unique:company.relaciones,placa',
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
                $relacion = Relacion::create(request()->all());
                if ($relacion) {
                    try {

                        $mantenimiento = new Mantenimiento();
                        $autoparte = Autoparte::with('proveedor')->find($relacion->autoparte_id);
                        $mantenimiento->descripcion = "Carga autoparte Inventario" . $autoparte->nombre;
                        $mantenimiento->proveedor_id = $autoparte->proveedor->id;
                        $mantenimiento->factura = $autoparte->num_factura;
                        $mantenimiento->tipo = 'Correctivo';
                        $mantenimiento->vehiculo_id = $relacion->vehiculo_id;
                        $aux = number_format($autoparte->moneda * $relacion->cantidad);
                        $subtotal = str_replace(',', '.', $aux);
                        $mantenimiento->subtotal = $subtotal;
                        $mantenimiento->fecha_ejecutado = \Carbon\Carbon::now();
                        $mantenimiento->save();
                        return response('Relacion registrado correctamente', 200);
                    } catch (\Throwable $th) {
                        return $th->getMessage();
                    }
                }
                return response('No hemos podido registrar el relacion', 500);
            } catch (\Throwable $th) {
                return $th->getMessage();
            }
        }
        return abort(404);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \Transportes\Relacion  $relacion
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request, $placa)
    {
        $relacion = Relacion::with('propietario')->Search($placa)->first();
        if ($relacion) {
            $total = Mantenimiento::whereMonth('created_at', '=', \Carbon\Carbon::now()->month)->sum('subtotal');
            $propietarios = Propietario::query()->select('identificacion', 'nombre', 'apellido')->toBase()->get();
            $proveedores = Proveedor::query()->select('identificacion', 'nombre', 'apellido')->toBase()->get();
            $clientes = Cliente::query()->select('id', 'nombre', 'apellido')->toBase()->get();

            return view('admin.relaciones.partials.formUpdate', compact('relacion', 'propietarios', 'proveedores', 'total', 'clientes'));
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
                // 'placa' => 'required|numeric|digits_between:1,10|unique:company.relaciones,placa,' . $request->id,
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
                $relacion = Relacion::Search($request->placa)->first();
                $relacion->update(request()->all());
                if ($relacion) {
                    return response('Relacion actualizado correctamente');
                    // return response($relacion, 200);

                }
                return response('No hemos podido actualizar el relacion', 500);
            } catch (\Throwable $th) {
                return $th->getMessage();
            }
        }
        return abort(404);
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  \Transportes\Relacion  $relacion
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, $id)
    {
        if ($request->expectsJson()) {
            $relacion = Relacion::findOrFail($id)->delete();
            return response('Relacion deleted successfully.');
        }
        return abort(404);
    }

    public function aggkmView()
    {
        $relaciones = Relacion::toBase()->get();
        return view('admin.relaciones.partials.formRegisterKm', compact('relaciones'));
    }

    public function aggKm(Request $request)
    {
        foreach ($request->placa as $key => $item) {
            $relacion = Relacion::Search($item)->first();
            $relacion->km_actual = request()->km_actual[$key];
            $relacion->save();
        }
        return redirect()
            ->action('RelacionController@aggkmView');
    }
}
