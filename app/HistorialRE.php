<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class HistorialRE extends Model
{
    protected $connection = 'company';

    public function scopeSearch($query, $nombre)
    {
        return $query->where('nombre', $nombre);
    }

    protected $fillable = [
        'parte_id',
        'prioridad',
        'frecuencia',
        'fuente',
        'km_actual',
        'estado',
        'fecha_programado',
        'fecha_ejecutado',
        'cant_programdo',
        'cant_ejecutado',
        'recomendacion_id',
        'observacion',
    ];

    protected $casts = [
        'fecha_programado' => 'datetime:j-M-Y',
        'fecha_ejecutado' => 'datetime:j-M-Y',
        'created_at' => 'datetime:Y-m-d',
        'updated_at' => 'datetime:Y-m-d',
    ];

    public function recomendacion()
    {
        return $this->belongsTo(Recomendacion::class);
    }
}
