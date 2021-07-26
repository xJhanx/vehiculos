<?php

namespace App\Http\Controllers;

use App\Hallazgo;
use Illuminate\Http\Request;

class HallazgoController extends Controller
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
    public function index(Request $request, $vehiculo)
    {
        // if ($request->expectsJson()) {

        return datatables()->of(Hallazgo::where('vehiculo_id', $vehiculo)
            // ->where('estado', 'activo')
            ->orderBy('id', 'DESC')->get())
            ->addColumn('action', 'admin.hallazgos.actions')
            ->rawColumns(['action'])
            ->addIndexColumn()
            ->setRowClass(function ($hallazgo) {

                if ($hallazgo->prioridad == 'Alta') {
                    return 'alert-danger';
                }
                if ($hallazgo->prioridad == 'Media') {
                    return 'alert-warning';
                }
                if ($hallazgo->prioridad == 'Baja') {
                    return 'alert-info';
                }
            })
            ->make(true);
        // }
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
                $hallazgo = Hallazgo::create(request()->all());
                if ($hallazgo) {
                    return response('Hallazgo registrado correctamente', 200);
                    // return response($request->all(), 200);

                }
                return response('No hemos podido registrar el hallazgo$hallazgo', 500);
            } catch (\Throwable $th) {
                return  $th->getMessage();
            }
        }
        return abort(404);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \Transportes\Hallazgo  $hallazgo
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request, $id)
    {
        if ($request->expectsJson()) {
            $hallazgo = Hallazgo::findOrFail($id);
            return response($hallazgo, 200);
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
                $hallazgo = Hallazgo::findOrFail($request->id);
                $hallazgo->update(request()->all());
                if ($hallazgo) {
                    return response('Hallazgo actualizado correctamente', 200);
                }
                return response('No hemos podido actualizar el hallazgo$hallazgo', 500);
            } catch (\Throwable $th) {
                return  $th->getMessage();
            }
        }
        return abort(404);
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  \Transportes\Hallazgo  $hallazgo
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, $id)
    {
        if ($request->expectsJson()) {
            $hallazgo = Hallazgo::findOrFail($id)->delete();
            return response('Hallazgo deleted successfully.');
        }
        return abort(404);
    }
}
