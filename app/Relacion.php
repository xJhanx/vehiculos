<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Relacion extends Model
{
    protected $connection = 'company';

    public static function boot()
    {
        parent::boot();

        self::creating(function ($model) {
            $autoparte = Autoparte::find($model->autoparte_id);
            $autoparte->decrement('cantidad', $model->cantidad);
        });
    }

    protected $fillable = [
        'autoparte_id',
        'vehiculo_id',
        'cantidad',
    ];

    public function autoparte()
    {
        return $this->belongsTo(Autoparte::class);
    }

    public function vehiculo()
    {
        return $this->belongsTo(Vehiculo::class);
    }
}
