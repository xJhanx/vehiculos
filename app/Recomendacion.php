<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Recomendacion extends Model
{
    protected $connection = 'company';

    protected $fillable = [
        'vehiculo_id',
        'parte_id',
        'seguimiento',
        'especificacion',
        'observacion',
        // 'fuente',
        'cant_programado',
        'cant_ejecutado',
        'fecha_programado',
        'km_actual',
        'fecha_actual',
        'km_siguiente',
        'fecha_siguiente',
    ];


    public function getKmSiguienteAttribute()
    {
        return str_replace('.', '', $this->attributes['km_siguiente']);
    }

    public function vehiculo()
    {
        return $this->belongsTo(Vehiculo::class);
    }

    public function parte()
    {
        return $this->belongsTo(Parte::class);
    }

    public function getShortAttribute()
    {
        return substr($this->attributes['especificacion'], 0, 85);
    }

    public function historialREs()
    {
        return $this->hasMany(HistorialRE::class);
    }

    protected $casts = [
        'created_at' => 'datetime:j-M-Y',
        'updated_at' => 'datetime:j-M-Y',
        'fecha_siguiente' => 'datetime:j-M-Y',
        'fecha_programado' => 'datetime:j-M-Y',
        'fecha_actual' => 'datetime:j-M-Y',
    ];
}
