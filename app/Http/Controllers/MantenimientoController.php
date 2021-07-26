<?php

namespace App\Http\Controllers;

use App\Mantenimiento;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;

class MantenimientoController extends Controller
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
        if ($request->expectsJson()) {
            return datatables()->of(Mantenimiento::with('proveedor')
                ->where('vehiculo_id', $vehiculo)
                ->orderBy('id', 'DESC')->get())
                ->addColumn('action', 'admin.mantenimientos.actions')
                ->rawColumns(['action'])
                ->addIndexColumn()
                ->make(true);
        }
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
                $mantenimiento = Mantenimiento::create(request()->all());
                if ($mantenimiento) {
                    return response('Mantenimiento registrado correctamente', 200);
                    // return response($request->all(), 200);

                }
                return response('No hemos podido registrar el mantenimiento', 500);
            } catch (\Throwable $th) {
                return  $th->getMessage();
            }
        }
        return abort(404);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \Transportes\Mantenimiento  $mantenimiento
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request, $id)
    {
        if ($request->expectsJson()) {
            $mantenimiento = Mantenimiento::findOrFail($id);
            return response($mantenimiento, 200);
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
                $mantenimiento = Mantenimiento::findOrFail($request->id);
                $mantenimiento->update(request()->all());
                if ($mantenimiento) {
                    return response('Mantenimiento actualizado correctamente', 200);
                }
                return response('No hemos podido actualizar el mantenimiento', 500);
            } catch (\Throwable $th) {
                return  $th->getMessage();
            }
        }
        return abort(404);
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  \Transportes\Mantenimiento  $mantenimiento
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, $id)
    {
        if ($request->expectsJson()) {
            $mantenimiento = Mantenimiento::findOrFail($id)->delete();
            return response('Mantenimiento deleted successfully.');
        }
        return abort(404);
    }
}
