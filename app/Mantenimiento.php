<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Mantenimiento extends Model
{
    protected $connection = 'company';

    protected $fillable = [
        'proveedor_id',
        'factura',
        'tipo',
        'subtotal',
        'km_actual',
        'km_siguiente',
        'descripcion',
        'vehiculo_id',
        'fecha_ejecutado',
        'subtotal',
    ];

    public function proveedor()
    {
        return $this->belongsTo(Proveedor::class);
    }

    public function vehiculo()
    {
        return $this->belongsTo(Vehiculo::class);
    }

    public function getShortAttribute()
    {
        return substr($this->attributes['descripcion'], 0, 85);
    }

    public function getAuxAttribute()
    {
        return str_replace('.', '', $this->attributes['subtotal']);
    }
    
    protected $casts = [
        'created_at' => 'datetime:Y-m-d',
        'updated_at' => 'datetime:Y-m-d',
    ];

}
