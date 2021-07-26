<?php

namespace App\Http\Controllers;

use App\Proveedor;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Config;

class ProveedorController extends Controller
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
            return datatables()->of(Proveedor::latest())
                ->addColumn('action', 'admin.proveedors.actions')
                ->rawColumns(['action'])
                ->addIndexColumn()
                ->make(true);
        }

        return view('admin.proveedors.index');
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
                'nombre' => 'required',
                'tipo_identificacion' => 'required',
                'identificacion' => 'required|numeric|digits_between:1,10|unique:company.proveedors,identificacion',
                // 'ciudad' => 'required',
                // 'departamento' => 'required',
                // 'direccion' => 'required',
                // 'telefono' => 'required',

            ],
            [
                'identificacion.digits_between' => 'El numero de identificacion debe contener entre 1 y 10 numeros',
                'identificacion.unique' => 'El numero de identificacion ya se encuentra registrado',

            ]
        );
        if ($request->expectsJson()) {
            try {
                $proveedor = Proveedor::create(request()->all());
                if ($proveedor) {
                    return response('Proveedor registrado correctamente', 200);
                }
                return response('No hemos podido registrar el proveedor', 500);
            } catch (\Throwable $th) {
                return $th->getMessage();
            }
        }
        return abort(404);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \Transportes\Proveedor  $proveedor
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request, $id)
    {
        if ($request->expectsJson()) {
            $proveedor = Proveedor::findOrFail($id);
            return response($proveedor, 200);
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
        request()->validate(
            [
                'nombre' => 'required',
                'tipo_identificacion' => 'required',
                'identificacion' => 'required|numeric|digits_between:1,10|unique:company.proveedors,identificacion,' . $request->id,
                // 'ciudad' => 'required',
                // 'departamento' => 'required',
                // 'direccion' => 'required',
                // 'telefono' => 'required',

            ],

            [
                'identificacion.digits_between' => 'El numero de identificacion debe contener entre 1 y 10 numeros',
                'identificacion.unique' => 'El numero de identificacion ya se encuentra registrado',
            ]
        );
        if ($request->expectsJson()) {
            try {
                $proveedor = Proveedor::findOrFail($request->id);
                $proveedor->update(request()->all());
                if ($proveedor) {
                    return response('Proveedor actualizado correctamente', 200);
                }
                return response('No hemos podido actualizar el proveedor', 500);
            } catch (\Throwable $th) {
                return $th->getMessage();
            }
        }
        return abort(404);
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  \Transportes\Proveedor  $proveedor
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, $id)
    {
        if ($request->expectsJson()) {
            $proveedor = Proveedor::findOrFail($id)->delete();
            return response('Proveedor deleted successfully.');
        }
        return abort(404);
    }

    public function select2(Request $request)
    {
        if ($request->expectsJson()) {
            $proveedores = Proveedor::toBase()->get();
            return $proveedores;
        }
    }


    public function get(Request $request)
    {

        if ($request->expectsJson()) {
            return Proveedor::toBase()->get();
        }
    }
}
