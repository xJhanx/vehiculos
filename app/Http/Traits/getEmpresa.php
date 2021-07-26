<?php

namespace App\Http\Traits;

use App\Admin;
use App\Conductor;
use App\ClienteCompany;
use App\DesignadoByCompany;
use Illuminate\Support\Facades\Auth;

trait getEmpresa
{
    public function getEmpresa()
    {
        switch (Auth::user()->role) {
            case 'conductor':
                $conductor = Conductor::findOrFail(Auth::user()->funcionario_id);
                return $conductor->empresa;
                break;
            case 'designado':
                $designado = DesignadoByCompany::findOrFail(Auth::user()->funcionario_id);
                return $designado->empresa;
                break;
            case 'administrador':
                $administrador = Admin::findOrFail(Auth::user()->funcionario_id);
                return $administrador->empresa;
                break;
             case 'cliente': //ClienteCompany
                $empresa = ClienteCompany::findOrFail(Auth::user()->funcionario_id);
                return $empresa->identificacion; 
                break; 
            default:
                return false;
                break;
        }
    }
}
