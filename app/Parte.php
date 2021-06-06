<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Parte extends Model
{
    protected $connection = 'company';

    protected $fillable = [
        'nombre',
        'prioridad',
        'frecuencia',
        'evaluacion',
        'fuente',
        'descripcion',
    ];

    public function recomendaciones()
    {
        return $this->hasMany(Recomendacion::class);
    }

}
