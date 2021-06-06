<?php

namespace App\Http\Controllers;

use App\Company;
use App\Empleado;
use App\Http\Requests\EmpleadoSaveRequest;
use App\Http\Requests\EmpleadoUpdateRequest;
use Illuminate\Http\Request;

class EmpleadoController extends Controller
{
    public function __construct()
    {
        $this->middleware(['auth']);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //TODO ques es esta wea
        $empleados  =       Empleado::toBase()->toBase()->get();
        $companies  =       Company::toBase()->toBase()->get();
        return view('empleado.index', compact('empleados', 'companies'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(EmpleadoSaveRequest $request)
    {

        if (request()->expectsJson()) {
            try {

                Empleado::create(request()->all());
                return response()->json('Empleado registrado correctamente', 200);
            } catch (\Throwable $th) {
                return response()->json($th->getMessage(), 500);
            }
        }
        return abort(404);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \Transportes\Empleado  $empleado
     * @return \Illuminate\Http\Response
     */
    public function edit(Empleado $empleado)
    {
        if (request()->expectsJson()) {
            return response($empleado, 200);
        }
        return abort(404);
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  \Transportes\Empleado  $empleado
     * @return \Illuminate\Http\Response
     */

    public function show(Empleado $empleado)
    {
        return view('admin.empleados.show', compact('empleado'));
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function update(EmpleadoUpdateRequest $request)
    {
        if (request()->expectsJson()) {
            try {
                $empleado = Empleado::findOrFail($request->id);
                $empleado->update(request()->all());
                return response()->json('Empleado actualizado correctamente', 200);
            } catch (\Throwable $th) {
                return  response()->json($th->getMessage(), 500);
            }
        }
        return abort(404);
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  \Transportes\Empleado  $empleado
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        if (request()->expectsJson()) {
            try {
                $empleado = Empleado::findOrFail($id);
                $empleado->delete();
                return response()->json('Empleado eliminado correctamente.', 200);
            } catch (\Throwable $th) {
                return response()->json($th->getMessage(), 500);
            }
        }
        return abort(404);
    }
}
