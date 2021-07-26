<?php

namespace App\Http\Controllers;

use App\Exports\Lavadoexport;
use App\Lavado;
use App\Vehiculo;
use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel;
use Symfony\Component\HttpFoundation\BinaryFileResponse;

class LavadoController extends Controller
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
        if (request()->expectsJson()) {
            return datatables()->of(Lavado::where('vehiculo_id', $vehiculo)
                ->orderBy('id', 'DESC')->take(10)->get())
                ->addColumn('action', 'admin.lavados.actions')
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
                $lavado = Lavado::create(request()->all());
                if ($lavado) {
                    return response('Lavado registrado correctamente', 200);
                    // return response($request->all(), 200);

                }
                return response('No hemos podido registrar el lavado', 500);
            } catch (\Throwable $th) {
                return  $th->getMessage();
            }
        }
        return abort(404);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \Transportes\Lavado  $lavado
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request, $id)
    {
        if ($request->expectsJson()) {
            $lavado = Lavado::findOrFail($id);
            return response($lavado, 200);
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
                $lavado = Lavado::findOrFail($request->id);
                $lavado->update(request()->all());
                if ($lavado) {
                    return response('Lavado actualizado correctamente', 200);
                }
                return response('No hemos podido actualizar el lavado', 500);
            } catch (\Throwable $th) {
                return  $th->getMessage();
            }
        }
        return abort(404);
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  \Transportes\Lavado  $lavado
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, $id)
    {
        if ($request->expectsJson()) {
            $lavado = Lavado::findOrFail($id)->delete();
            return response('Lavado deleted successfully.');
        }
        return abort(404);
    }

    public function download(Request $key): BinaryFileResponse
    {
        return Excel::download(new Lavadoexport($key), 'Historial.xls');
    }
}
