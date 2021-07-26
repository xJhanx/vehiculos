<?php

namespace App\Http\Controllers;

use App\Autoparte;
use App\Proveedor;
use App\Vehiculo;
use Illuminate\Http\Request;

class AutoparteController extends Controller
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
            return datatables()->of(Autoparte::latest())
                ->addColumn('action', 'admin.autopartes.actions')
                ->rawColumns(['action'])
                ->addIndexColumn()
                ->make(true);
        }
        $proveedores = Proveedor::get();
        return view('admin.autopartes.index', compact('proveedores'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // request()->validate(
        //     [
        //         'nombre' => 'required',
        //         'tipo_identificacion' => 'required',
        //         'identificacion' => 'required|numeric|digits_between:1,10|unique:company.proveedors,identificacion',
        //         'ciudad' => 'required',
        //         'departamento' => 'required',
        //         'direccion' => 'required',
        //         'telefono' => 'required',

        //     ],
        //     [
        //         'identificacion.digits_between' => 'El numero de identificacion debe contener entre 1 y 10 numeros',
        //         'identificacion.unique' => 'El numero de identificacion ya se encuentra registrado',

        //     ]
        // );
        if ($request->expectsJson()) {
            try {
                $autoparte = Autoparte::create(request()->all());
                if ($autoparte) {
                    return response('Autoparte registrado correctamente', 200);
                }
                return response('No hemos podido registrar el autoparte', 500);
            } catch (\Throwable $th) {
                return response($th->getMessage());
            }
        }
        return abort(404);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \Transportes\Autoparte  $autoparte
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request, $id)
    {
        if ($request->expectsJson()) {
            $autoparte = Autoparte::findOrFail($id);
            return response($autoparte, 200);
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
        // request()->validate(
        //     [
        //         'nombre' => 'required',
        //         'tipo_identificacion' => 'required',
        //         'identificacion' => 'required|numeric|digits_between:1,10|unique:company.proveedors,identificacion,' . $request->id,
        //         'ciudad' => 'required',
        //         'departamento' => 'required',
        //         'direccion' => 'required',
        //         'telefono' => 'required',

        //     ],

        //     [
        //         'identificacion.digits_between' => 'El numero de identificacion debe contener entre 1 y 10 numeros',
        //         'identificacion.unique' => 'El numero de identificacion ya se encuentra registrado',
        //     ]
        // );
        if ($request->expectsJson()) {
            try {
                $autoparte = Autoparte::findOrFail($request->id);
                $autoparte->update(request()->all());
                if ($autoparte) {
                    return response('Autoparte actualizado correctamente', 200);
                }
                return response('No hemos podido actualizar el autoparte', 500);
            } catch (\Throwable $th) {
                return  $th->getMessage();
            }
        }
        return abort(404);
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  \Transportes\Autoparte  $autoparte
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, $id)
    {
        if ($request->expectsJson()) {
            $autoparte = Autoparte::findOrFail($id)->delete();
            return response('Autoparte deleted successfully.');
        }
        return abort(404);
    }
}
