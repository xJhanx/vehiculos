<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Lavado extends Model
{
    protected $connection = 'company';

    protected $fillable = [
        'km_registrado',
        'vehiculo_id',
        'f_ingreso',
        'observacion',
    ];

    public function vehiculo()
    {
        return $this->belongsTo(Vehiculo::class);
    }
}
