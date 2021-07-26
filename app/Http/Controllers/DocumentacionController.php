<?php

namespace App\Http\Controllers;

use App\Documentacion;
use App\Vehiculo;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Validation\Validator;
use Symfony\Component\HttpFoundation\Session\Session;

class DocumentacionController extends Controller
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
    public function index()
    {
        if (request()->expectsJson()) {

            return datatables()->of(Vehiculo::query()->with('propietario'))
                ->addColumn('action', 'admin.documentos.actions')
                ->rawColumns(['action'])
                ->addIndexColumn()
                ->make(true);
        }
        return view('admin.documentos.index');
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
        if (request()->expectsJson()) {
            try {
                if ($request->file('file')) {
                    $documento = new Documentacion();
                    $filename = '_' . time() . '.' . $request->file('file')->getClientOriginalExtension();
                    $request->file('file')->move(public_path() . "/file", $filename);
                    $documento->img = $filename;
                    $documento->descripcion = $request->descripcion;
                    $documento->vehiculo_id = $request->vehiculo_id;
                    $documento->save();
                    return response('Registrado exitosamente', 200);
                }
            } catch (\Throwable $th) {
                return response($th->getMessage());
            }
            // return response('Registrado exitosamente', 200);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Documentacion  $documentacion
     * @return \Illuminate\Http\Response
     */
    public function show($documentacion)
    {
        // dd($documentacion);
        $vehiculo = Vehiculo::with('documentos')->where('id', $documentacion)->firstOrFail();
        $id = $vehiculo->id;
        return view('admin.documentos.show', compact('id', 'vehiculo'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Documentacion  $documentacion
     * @return \Illuminate\Http\Response
     */
    public function edit(Documentacion $documentacion)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Documentacion  $documentacion
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Documentacion $documentacion)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Documentacion  $documentacion
     * @return \Illuminate\Http\Response
     */
    public function destroy($key)
    {
        if (request()->expectsJson()) {
            $documentacion = Documentacion::findOrFail($key);
            \File::delete(public_path('/file/' . $documentacion->img));
            $documentacion->delete();
            return response('Documento deleted successfully.');
        }
        return abort(404);
    }
}
