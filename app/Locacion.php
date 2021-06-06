<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Locacion extends Model
{
    protected $connection = 'company';

    public function scopeSearch($query, $nombre)
    {
        return $query->where('nombre', $nombre);
    }

    public function getRouteKeyName()
    {
        return 'nombre';
    }

    protected $fillable = [
        'nombre',
        'porcentaje',
        'descripcion',
    ];
}
