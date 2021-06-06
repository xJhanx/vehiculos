<?php

namespace App\Http\Controllers;

use App\Locacion;

use Illuminate\Http\Request;

class LocacionController extends Controller
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
            return datatables()->of(Locacion::latest())
                ->addColumn('action', 'admin.locacions.actions')
                ->rawColumns(['action'])
                ->addIndexColumn()
                ->make(true);
        }

        return view('admin.locacions.index');
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
                'descripcion' => 'required',
                'porcentaje' => 'required',

            ]
        );

        if ($request->expectsJson()) {
            try {
                $locacion = Locacion::create(request()->all());
                if ($locacion) {
                    return response('Locacion registrado correctamente', 200);
                }
                return response('No hemos podido registrar el locacion', 500);
            } catch (\Throwable $th) {
                return  $th->getMessage();
            }
        }
        return abort(404);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \Transportes\Locacion  $locacion
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request, $id)
    {
        if ($request->expectsJson()) {
            $locacion = Locacion::findOrFail($id);
            return response($locacion, 200);
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
                'descripcion' => 'required',
                'porcentaje' => 'required',
            ]

        );
        if ($request->expectsJson()) {
            try {
                $locacion = Locacion::Search($request->nombre)->first();
                $locacion->update(request()->all());
                if ($locacion) {
                    return response('Locacion actualizado correctamente', 200);
                }
                return response('No hemos podido actualizar el locacion', 500);
            } catch (\Throwable $th) {
                return  $th->getMessage();
            }
        }
        return abort(404);
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  \Transportes\Locacion  $locacion
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, $id)
    {
        if ($request->expectsJson()) {
            $locacion = Locacion::findOrFail($id)->delete();
            return response('Locacion deleted successfully.');
        }
        return abort(404);
    }
}
