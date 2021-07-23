<?php

namespace App\Http\Controllers;

use App\Admin;
use App\DesignadoByCompany as Designado;
use App\Http\Requests\DesignadoSaveRequest;
use App\User;
use App\ClienteCompany;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class DesignadoByCompanyController extends Controller
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
            $admin = ClienteCompany::find(Auth::user()->funcionario_id);
            return datatables(Designado::where('empresa', $admin->identificacion)->latest())
                ->addColumn('action', 'admin.designados.actions')
                ->rawColumns(['action'])
                ->addIndexColumn()
                ->toJson();
        }

        Log::critical(json_encode(Auth::user()->name));
        return view('admin.designados.index');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(DesignadoSaveRequest $request)
    {

        if ($request->expectsJson()) {
            try {
                
                $designado = Designado::create(request()->all());
                $admin = ClienteCompany::find(Auth::user()->funcionario_id);
                $designado->empresa = $admin->identificacion;
                $designado->save();

                User::create([
                    'name' => request()->get('email'),
                    'company' => Auth::user()->company,
                    'email' => request()->get('email'),
                    'password' => Hash::make(request()->get('identificacion')),
                    'role' => 'designado',
                    'funcionario_id' => $designado->id,
                ]);

                return response('Designado registrado correctamente', 200);
            } catch (\Throwable $th) {
                return  response($th->getMessage(), 500);
            }
        }
        return abort(404);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \Transportes\Designado  $cliente
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request, $id)
    {
        if ($request->expectsJson()) {
            $cliente = Designado::findOrFail($id);
            return response($cliente, 200);
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
                'identificacion' => 'required|numeric|digits_between:1,10|unique:company.designados,identificacion,' . $request->id,
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
                $cliente = Designado::findOrFail($request->id);
                $cliente->update(request()->all());
                if ($cliente) {
                    return response('Designado actualizado correctamente', 200);
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
     * @param  \Transportes\Designado  $cliente
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, $id)
    {
        if ($request->expectsJson()) {
            $Designado = Designado::findOrFail($id)->delete();
            $User = User::firstWhere('funcionario_id', $id)->delete();
            return response('Designado deleted successfully.');
        }

        return abort(404);
    }
}
