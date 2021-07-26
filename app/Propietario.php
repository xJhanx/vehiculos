<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Propietario extends Model
{
    protected $connection = 'company';

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

    public function vehiculos()
    {
        return $this->hasMany(Vehiculo::class);
    }

    public function getContactoAttribute()
    {
    return $this->attributes['telefono']  . "\n" .   $this->attributes['email'];

    }

    public function getFullnameAttribute()
    {
    return $this->attributes['nombre'] . ' ' . $this->attributes['apellido'] ;
    }

}
