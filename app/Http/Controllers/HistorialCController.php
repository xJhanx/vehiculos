<?php

namespace App\Http\Controllers;

use App\HistorialC;
use Illuminate\Http\Request;

class HistorialCController extends Controller
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
        //
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
     * @param  \App\HistorialC  $historialC
     * @return \Illuminate\Http\Response
     */
    public function show(HistorialC $historialC)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\HistorialC  $historialC
     * @return \Illuminate\Http\Response
     */
    public function edit(HistorialC $historialC)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\HistorialC  $historialC
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, HistorialC $historialC)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\HistorialC  $historialC
     * @return \Illuminate\Http\Response
     */
    public function destroy(HistorialC $historialC)
    {
        //
    }
}
