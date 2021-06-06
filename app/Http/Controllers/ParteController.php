<?php

namespace App\Http\Controllers;

use App\Http\Requests\ParteSaveRequest;
use App\Parte;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ParteController extends Controller
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

        if (request()->expectsJson()) {
            return datatables()->of(Parte::orderBy('id', 'DESC')->get())
                ->addColumn('action', 'admin.partes.actions')
                ->rawColumns(['action'])
                ->addIndexColumn()
                ->make(true);
        }

        return view('admin.partes.index');
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
                $parte = Parte::create(request()->all());
                if ($parte) {
                    return response('Parte registrado correctamente', 200);
                }
                return response('No hemos podido registrar el Parte', 500);
            } catch (\Throwable $th) {
                return $th->getMessage();
            }
        }
        return abort(404);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \Transportes\Parte  $parte
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request, $id)
    {
        if ($request->expectsJson()) {
            $parte = Parte::findOrFail($id);
            return response($parte, 200);
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

        if (request()->expectsJson()) {
            try {
                $parte = Parte::findOrFail($request->id);
                $parte->update(request()->all());
                if ($parte) {
                    return response('Parte actualizado correctamente', 200);
                }
                return response('No hemos podido actualizar el Parte', 500);
            } catch (\Throwable $th) {
                return $th->getMessage();
            }
        }
        return abort(404);
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  \Transportes\Parte  $parte
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, $id)
    {
        if ($request->expectsJson()) {
            $parte = Parte::findOrFail($id)->delete();
            return response('Parte deleted successfully.');
        }
        return abort(404);
    }

    public function select2(Request $request)
    {
        if ($request->expectsJson()) {
            $proveedores = Parte::toBase()->get();
            return $proveedores;
        }
    }
}
