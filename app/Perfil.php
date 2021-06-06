<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Perfil extends Model
{
    protected $connection = 'company';

    
    protected  $fillable = [
        'img',
        'vehiculo_id'
    ];

    public function vehiculo()
    {
        return $this->belongsTo(Vehiculo::class);
    }
}
