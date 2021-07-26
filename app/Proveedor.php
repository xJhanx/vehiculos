<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Proveedor extends Model
{
    protected $connection = 'company';

    public function scopeSearch($query, $identificacion)
    {
        return $query->where('identificacion', $identificacion);
    }
    
    public function getRouteKeyName()
    {
        return 'identificacion';
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

    // protected $appends = ['nombre_completo'];

    // public function getNombreCompletoAttribute()
    // {
    // return $this->attributes['nombre'] . ' ' . $this->attributes['apellido'] ;
    // }

    public function getfullnameAttribute()
    {
    return $this->attributes['nombre']  . $this->attributes['apellido'] ;
    }

    public function mantenimientos()
    {
        return $this->hasMany(Mantenimiento::class);
    }

    public function autopartes()
    {
        return $this->hasMany(Autoparte::class);
    }

}
