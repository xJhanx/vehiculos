<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Hallazgo extends Model
{
    protected $connection = 'company';

    protected $fillable = [
        'vehiculo_id',
        'prioridad',
        'estado',
        'observacion',
    ];

    public function vehiculo()
    {
        return $this->belongsTo(Vehiculo::class);
    }

    protected $casts = [
        'created_at' => 'datetime:Y-m-d',
        'updated_at' => 'datetime:Y-m-d',
    ];

}
