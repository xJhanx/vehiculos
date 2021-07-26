<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Passenger extends Model
{

    protected $connection = 'company';
    
    protected $fillable = [
        'nombre',
        'apellido',
        'email',
        'tipo_identificacion',
        'identificacion',
        'destino',
        'encuentro',
        'ciudad',
        'direccion',
        'telefono',
        'cargo',
        'observaciones',
        'telefono_opcional',
        'empresa',
    ];

    // public function getFullNameAttribute($key)
    // {
        
    // }
}
