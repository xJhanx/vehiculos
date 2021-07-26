<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Autoparte extends Model
{
    protected $connection = 'company';

    protected $fillable = [
        'nombre',
        'descripcion',
        'cantidad',
        'referencia',
        'vehiculo_id',
        'proveedor_id',
        'num_factura',
        'valor_unidad',
    ];

    public function vehiculo()
    {
        return $this->hasMAny(Vehiculo::class);
    }

    public function proveedor()
    {
        return $this->belongsTo(Proveedor::class);
    }

    public function getMonedaAttribute()
    {
        return str_replace('.', '', $this->attributes['valor_unidad']);
    }

}
