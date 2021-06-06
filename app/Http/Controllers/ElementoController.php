<?php

namespace App\Http\Controllers;

use App\Elemento;
use App\Vehiculo;
use Illuminate\Http\Request;

class ElementoController extends Controller
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
        $vehiculo = Vehiculo::find($vehiculo);

        if ($request->expectsJson()) {
            return datatables()->of(Elemento::where('vehiculo_placa', $vehiculo->placa))
                ->addColumn('action', 'admin.elementos.actions')
                ->rawColumns(['action'])
                ->addIndexColumn()
                ->setRowClass(function ($elemento) {

                    switch ($elemento->tipo) {
                        case 'seguridad':
                            return 'alert-info';
                            break;
                        case 'Kit de carretera':
                            return 'alert-warning';
                            break;
                        case 'Herramienta':
                            return 'alert-dark ';
                            break;
                        case 'Ambiental':
                            return 'alert-success ';
                            break;
                        case 'Botiquin':
                            return 'alert-danger ';
                            break;
                        default:
                            return 'alert-muted ';
                    }
                })
                ->make(true);
        }
        return view('admin.elementos.index', compact('vehiculo'));
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
                $recomendacion = Elemento::create(request()->all());
                if ($recomendacion) {
                    return response('Elemento registrado correctamente', 200);
                }
                return response('No hemos podido registrar el recomendacion', 500);
            } catch (\Throwable $th) {
                return response($th->getMessage());
            }
        }
        return abort(404);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \Transportes\Elemento  $recomendacion
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request, $id)
    {
        if ($request->expectsJson()) {
            $recomendacion = Elemento::findOrFail($id);
            return response($recomendacion, 200);
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
                $recomendacion = Elemento::findOrFail($request->id);
                $recomendacion->update(request()->all());
                if ($recomendacion) {
                    return response('Elemento actualizado correctamente', 200);
                }
                return response('No hemos podido actualizar el recomendacion', 500);
            } catch (\Throwable $th) {
                return  $th->getMessage();
            }
        }
        return abort(404);
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  \Transportes\Elemento  $recomendacion
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, $id)
    {
        if ($request->expectsJson()) {
            $recomendacion = Elemento::findOrFail($id)->delete();
            return response('Elemento deleted successfully.');
        }
        return abort(404);
    }
}
