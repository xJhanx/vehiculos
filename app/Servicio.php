<?php

namespace App;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

class Servicio extends Model
{
    protected $connection = 'company';
    protected $table = 'servicios';

    protected $fillable = [
        'created_date',
        'approved_date',
        'conductor_id',
        'vehiculo_id',
        'empresa_id',
        'punto_inicio',
        'punto_fin',
        'estado',
        'observaciones',
        'date',
        'costo',
        'hour',
        'observaciones_conductor',
    ];

    public function passengers()
    {
        return $this->belongsToMany(Passenger::class);
    }

    public function empresa()
    {
        return $this->belongsTo(ClienteCompany::class,'empresa_id','identificacion');
    }

    public function vehiculo()
    {
        return $this->belongsTo(Vehiculo::class);
    }

    public function conductor()
    {
        return $this->belongsTo(Conductor::class);
    }

    public function getDateAttribute()
    {
        return   Carbon::parse($this->attributes['date'])->format('Y-m-d');

        // return   Carbon::parse($this->attributes['date'])->format('Y-m-d') . ' ' . $this->attributes['hour'];
    }

    public function getCreatedAtAttribute()
    {
        return   Carbon::parse($this->attributes['created_at'])->format('Y-m-d');
    }
}
