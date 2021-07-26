<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Elemento extends Model
{
    protected $connection = 'company';

    protected $fillable = [
        'descripcion',
        'disponibilidad',
        'observacion',
        'cantidad',
        'tipo',
        'vehiculo_placa'
    ];


    public function vehiculo()
    {
        return $this->belongsTo(Vehiculo::class);
    }
}
