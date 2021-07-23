<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DesignadoByCompany extends Model
{
    protected $connection = 'company';
    protected $table = 'designados';

    public function getRouteKeyName()
    {
        return 'identificacion';
    }

    public function scopeSearch($query, $identificacion)
    {
        return $query->where('identificacion', $identificacion);
    }

    protected $fillable = [
        'nombre',
        'empresa',
        'apellido',
        'sexo',
        'email',
        'tipo_identificacion',
        'identificacion',
        'tipo_casa',
        'ciudad',
        'barrio',
        'direccion',
        'telefono',
        'telefono_opcional',
        'departamento'
    ];

    public function getFullnameAttribute()
    {
        return $this->attributes['nombre'] . ' ' . $this->attributes['apellido'];
    }
}
