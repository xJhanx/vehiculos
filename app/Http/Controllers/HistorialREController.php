<?php

namespace App\Http\Controllers;

use App\HistorialRE;
use App\Mantenimiento;
use App\Recomendacion;
use Illuminate\Http\Request;

class HistorialREController extends Controller
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
    public function index(Request $request, $id)
    {
        if ($request->expectsJson()) {

            return datatables()->of(HistorialRE::query()->where('recomendacion_id', $id)
                ->orderBy('id', 'DESC')->get())
                ->addColumn('action', 'admin.historialRE.actions')
                ->rawColumns(['action'])
                ->addIndexColumn()
                ->make(true);
        }

        $recomendacion = Recomendacion::find($id);
        return view('admin.historialRE.index', compact('recomendacion'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\HistorialRE  $historialRE
     * @return \Illuminate\Http\Response
     */
    public function show(HistorialRE $historialRE)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\HistorialRE  $historialRE
     * @return \Illuminate\Http\Response
     */
    public function edit(HistorialRE $historialRE)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\HistorialRE  $historialRE
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, HistorialRE $historialRE)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\HistorialRE  $historialRE
     * @return \Illuminate\Http\Response
     */
    public function destroy($key)
    {
        if (request()->expectsJson()) {
            $historial = HistorialRE::findOrFail($key)->delete();
            return response('HistorialRE deleted successfully.');
        }
        return abort(404);
    }

    public function alls(Request $request)
    {
        if ($request->expectsJson()) {

            return datatables()->of(Mantenimiento::with('vehiculo','proveedor')
                // ->where('seguimiento', 'Ejecutado')
                ->whereMonth('created_at', '=', \Carbon\Carbon::now()->month)
                ->orderBy('id', 'DESC')->get())
                ->addIndexColumn()
                ->make(true);
        }
        return view('admin.historialRE.alls');
    }
}
