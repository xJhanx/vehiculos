<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Documentacion extends Model
{
    protected $connection = 'company';

    // public function scopeSearch($query, $nombre)
    // {
    //     return $query->where('nombre', $nombre);
    // }

    // public function getRouteKeyName()
    // {
    //     return 'nombre';
    // }

    protected  $fillable = [
        'descripcion',
        'img',
        'vehiculo_id'
    ];

    public function vehiculo()
    {
        return $this->belongsTo(Vehiculo::class);
    }

    // public function getImgAttributte()
    // {
    //     return \Storage::url($this->img);
    // }

}
