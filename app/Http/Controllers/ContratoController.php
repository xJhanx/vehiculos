<?php

namespace App\Http\Controllers;

use App\Contrato;
use App\Mail\NotifyMail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use Redirect, Response;

class ContratoController extends Controller
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
            return datatables()->of(Contrato::with('vehiculo','cliente')->where('vehiculo_id', $vehiculo)->orderBy('id', 'DESC')->get())
                ->addColumn('action', 'admin.contratos.actions')
                ->rawColumns(['action'])
                ->addIndexColumn()
                ->make(true);
        }

        return view('admin.contratos.index');
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
                // 'nombre' => 'required',
                // 'tipo_identificacion' => 'required',
                // 'identificacion' => 'required|numeric|digits_between:1,10|unique:company.contratos,identificacion',
                // 'ciudad' => 'required',
                // 'departamento' => 'required',
                // 'direccion' => 'required',
                // 'telefono' => 'required',

            ],
            [
                // 'identificacion.digits_between' => 'El numero de identificacion debe contener entre 1 y 10 numeros',
                // 'identificacion.unique' => 'El numero de identificacion ya se encuentra registrado',

            ]
        );
        if ($request->expectsJson()) {
            try {
                $contrato = Contrato::create(request()->all());
                if ($contrato) {
                    return response('Contrato registrado correctamente', 200);
                }
                return response('No hemos podido registrar el cliente', 500);
            } catch (\Throwable $th) {
                return  response($th->getMessage());;
            }
        }
        return abort(404);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \Transportes\Contrato  $contrato
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request, $id)
    {
        if ($request->expectsJson()) {
            $contrato = Contrato::with('cliente')->findOrFail($id);
            return response($contrato, 200);
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
                // 'nombre' => 'required',
                // 'tipo_identificacion' => 'required',
                // 'identificacion' => 'required|numeric|digits_between:1,10|unique:company.contratos,identificacion,' . $request->id,
                // 'ciudad' => 'required',
                // 'departamento' => 'required',
                // 'direccion' => 'required',
                // 'telefono' => 'required',

            ],

            [
                // 'identificacion.digits_between' => 'El numero de identificacion debe contener entre 1 y 10 numeros',
                // 'identificacion.unique' => 'El numero de identificacion ya se encuentra registrado',
            ]
        );
        if ($request->expectsJson()) {
            try {
                $contrato = Contrato::findOrFail($request->id);
                $contrato->update(request()->all());
                if ($contrato) {
                    return response('Contrato actualizado correctamente', 200);
                }
                return response('No hemos podido actualizar el cliente', 500);
            } catch (\Throwable $th) {
                return  response($th->getMessage());
            }
        }
        return abort(404);
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  \Transportes\Contrato  $contrato
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, $id)
    {
        if ($request->expectsJson()) {
            $contrato = Contrato::findOrFail($id)->delete();
            return response('Contrato deleted successfully.');
        }
        return abort(404);
    }

    public function contact()
    {
        //TODO algo mal
        // $contrato = Contrato::toBase()->get();
        // Mail::to('angellphp@gmail.com')->send(new NotifyMail($contrato));
        // return 'Done';
    }
}
