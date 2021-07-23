<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\Auth;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware(['auth', 'database']);
    }


    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        if (Auth::user()->role == 'superGerente') {
            return  redirect()->route('admins.index');
        }
        if (Auth::user()->role == 'gerente') {
            return  redirect()->route('clientes.index');
        }
        if (Auth::user()->role == 'administrador') {
            return  redirect()->route('clientescompany.index');
        }
        if (Auth::user()->role == 'conductor') {
            return  redirect()->route('servicios.index');
        }
        if (Auth::user()->role == 'designado') {
            return  redirect()->route('servicios.index');
        }
        if (Auth::user()->role == 'cliente') {
            return  redirect()->route('designados.index');
        }
        return  redirect()->route('clientes.index');
    }
}
