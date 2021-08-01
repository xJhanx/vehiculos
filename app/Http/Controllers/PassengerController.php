<?php

namespace App\Http\Controllers;

use App\Admin;
use App\Http\Traits\getEmpresa;
use App\Passenger;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\ClienteCompany;
use Illuminate\Support\Facades\DB;

class PassengerController extends Controller
{

    use getEmpresa;

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        // return response()->json(['passengers' => Passenger::where('empresa', $this->getEmpresa())->latest()->get()], 200);
        if ($request->expectsJson()) {
            return datatables(Passenger::where('empresa', $this->getEmpresa())->latest()->get())
                ->addColumn('action', 'admin.passengers.actions')
                ->rawColumns(['action'])
                ->addIndexColumn()
                ->toJson();
        }

        return view('admin.passengers.index');
    }


    /* 
    public function passengersapi()
            if (request()->expectsJson()) { 
           return datatables(Passenger::where('empresa', $this->getEmpresa())->latest()->get())
               ->addColumn('action', 'admin.passengers.actions')
               ->rawColumns(['action'])
               ->addIndexColumn()
               ->toJson();
       }  
       
       */


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
        
        $email = $request->email;
        $id = $request->identificacion;
        $response = DB::connection('company')->select("SELECT id FROM passengers WHERE email= '$email' OR identificacion = '$id'");
        
        try {
            if($request->expectsJson()){

                if ($response) {
                    throw new \Exception("La identificacion o correo ya existen");
                }
                
                $passenger = Passenger::create(request()->all());
                $passenger->empresa = $this->getEmpresa();
                $passenger->save();
                
                return response()->json("Pasajero agregado correctamente",200);
                /*             if (request()->expectjson) {
                    return response()->json(['passengers' => Passenger::where('empresa', $this->getEmpresa())->latest()->get()], 201);
                } */
                
            }
        } catch (\Throwable $th) {
            return  response()->json($th->getMessage(), 400);
        }

        return back();
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Passenger  $passenger
     * @return \Illuminate\Http\Response
     */
    public function show(Passenger $passenger)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Passenger  $passenger
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        // if(request()->expectjson){
        return response()->json(Passenger::findOrfail($id));
        // }

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Passenger  $passenger
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        if ($request->expectsJson()) {
            try {
                $cliente = Passenger::findOrFail($request->id);
                $cliente->update(request()->all());
                if ($cliente) {
                    return response('Actualizado correctamente', 200);
                }
                return response('No hemos podido actualizar', 500);
            } catch (\Throwable $th) {
                return  response($th->getMessage());
            }
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Passenger  $passenger
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $passenger = Passenger::findOrfail($id);
        $passenger->delete();
        return response()->json('Eliminado correctamente');
    }
}
