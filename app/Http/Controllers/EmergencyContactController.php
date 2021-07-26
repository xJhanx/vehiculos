<?php

namespace App\Http\Controllers;

use App\Conductor;
use App\EmergencyContact;
use App\Http\Requests\EmergencyContactSaveRequest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;

class EmergencyContactController extends Controller
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
            return datatables(EmergencyContact::latest())
                ->addColumn('action', 'admin.conductores.actions')
                ->rawColumns(['action'])
                ->addIndexColumn()
                ->toJson();
        }

        Log::critical(json_encode(Auth::user()->name));
        return view('admin.conductores.index');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(EmergencyContactSaveRequest $request)
    {

        // if ($request->expectsJson()) {
            try {
                EmergencyContact::create(request()->all());
                return back();
                // return response('EmergencyContact registrado correctamente', 200);
            } catch (\Throwable $th) {
                return  response($th->getMessage(), 500);
            }
        // }
        // return abort(404);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \Transportes\EmergencyContact  $cliente
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request, $id)
    {
        if ($request->expectsJson()) {
            $cliente = EmergencyContact::findOrFail($id);
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

            ]

        );

        if ($request->expectsJson()) {
            try {
                $cliente = EmergencyContact::findOrFail($request->id);
                $cliente->update(request()->all());
                if ($cliente) {
                    return response('EmergencyContact actualizado correctamente', 200);
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
     * @param  \Transportes\EmergencyContact  $cliente
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, $id)
    {
        if ($request->expectsJson()) {
            $cliente = EmergencyContact::findOrFail($id)->delete();
            return response('EmergencyContact deleted successfully.');
        }

        return abort(404);
    }

    /**
     * get contacts by conductor
     * @param Int $id
     * @return  \Illuminate\Http\Response
     */
    public function getContacts(Request $request, $id)
    {
        if ($request->expectsJson()) {
            $contacts = Conductor::with('emergency_contacts')->findOrFail($id);
            return datatables($contacts->emergency_contacts)
                // ->addColumn('action', 'admin.conductores.actions')
                // ->rawColumns(['action'])
                ->addIndexColumn()
                ->toJson();
        }

        return abort(404);
    }
}
