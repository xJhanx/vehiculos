<?php

namespace App\Http\Controllers;

use App\Http\Requests\PropietarioSaveRequest;
use App\Propietario;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PropietarioController extends Controller
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
            return datatables()->of(Propietario::orderBy('id', 'DESC')->get())
                ->addColumn('action', 'admin.propietarios.actions')
                ->rawColumns(['action'])
                ->addIndexColumn()
                ->make(true);
        }

        return view('admin.propietarios.index');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(PropietarioSaveRequest $request)
    {
        if ($request->expectsJson()) {
            try {
                $Propietario = Propietario::create(request()->all());
                if ($Propietario) {
                    return response('Propietario registrado correctamente', 200);
                }
                return response('No hemos podido registrar el Propietario', 500);
            } catch (\Throwable $th) {
                return $th->getMessage();
            }
        }
        return abort(404);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \Transportes\Propietario  $Propietario
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request, $id)
    {
        if ($request->expectsJson()) {
            $Propietario = Propietario::findOrFail($id);
            return response($Propietario, 200);
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
                'identificacion' => 'required|numeric|digits_between:1,10|unique:company.propietarios,identificacion,' . $request->id,
                'ciudad' => 'required',
                'departamento' => 'required',
                'direccion' => 'required',
                'telefono' => 'required',

            ],

            [
                'identificacion.digits_between' => 'El numero de identificacion debe contener entre 1 y 10 numeros',
                'identificacion.unique' => 'El numero de identificacion ya se encuentra registrado',
            ]
        );
        if ($request->expectsJson()) {
            try {
                $Propietario = Propietario::findOrFail($request->id);
                $Propietario->update(request()->all());
                if ($Propietario) {
                    return response('Propietario actualizado correctamente', 200);
                }
                return response('No hemos podido actualizar el Propietario', 500);
            } catch (\Throwable $th) {
                return $th->getMessage();
            }
        }
        return abort(404);
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  \Transportes\Propietario  $Propietario
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, $id)
    {
        if ($request->expectsJson()) {
            $Propietario = Propietario::findOrFail($id)->delete();
            return response('Propietario deleted successfully.');
        }
        return abort(404);
    }

    public function select2(Request $request)
    {
        if ($request->expectsJson()) {
            $proveedores = Propietario::toBase()->get();
            return $proveedores;
        }
    }
}
