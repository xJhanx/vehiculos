<?php

namespace App;

use App\Mantenimiento;
use Illuminate\Database\Eloquent\Model;

class Vehiculo extends Model
{

    protected $connection = 'company';

    public function scopeSearch($query, $placa)
    {
        return $query->where('placa', $placa);
    }

    public function getRouteKeyName()
    {
        return 'placa';
    }

    protected $fillable = [

        'capacidad_pasajeros',
        'capacidad_litros',
        'capacidad_toneladas',
        'tipo_servicio',
        'estado',
        'tipo_vehiculo',
        'placa',
        'marca',
        'modelo',
        'cilindraje',
        'cupos',
        'tipo_combustible',
        'color',
        'serie',
        'numero_licencia',
        'fecha_licencia',
        'numero_tarjeta_operaciones',
        'vigencia_tarjeta_operaciones',
        'numero_tecnomecanica',
        'vigencia_tecnomecanica',
        'numero_soat',
        'vigencia_soat',
        'aseguradora_poliza_tr',
        'numero_poliza_tr',
        'vigencia_poliza_tr',
        'aseguradora_poliza_ct',
        'numero_poliza_ct',
        'vigencia_poliza_ct',
        'aseguradora_poliza_ex_ct',
        'numero_poliza_ex_ct',
        'vigencia_poliza_ex_ct',
        'numero_contrato',
        'fecha_ingreso_contrato',
        'gps',
        'kit',
        'botiquin',
        'locacion_id',
        'propietario_id',
        'recomendacion',
        'km_actual',

    ];



    public function propietario()
    {
        return $this->belongsTo(Propietario::class);
    }

    public function mantenimientos()
    {
        return $this->hasMany(Mantenimiento::class);
    }


    public function contratos()
    {
        return $this->hasMany(Contrato::class);
        // return $this->hasMany(Contrato::class, 'vehiculo_placa', 'placa');
    }

    public function documentos()
    {
        return $this->hasMany(Documentacion::class);
    }

    public function perfil()
    {
        return $this->hasOne(Perfil::class);
    }

    public function lavados()
    {
        return $this->hasMany(Lavado::class);
    }


    public function elementos()
    {
        return $this->hasMany(Elemento::class, 'vehiculo_placa');
    }

    public function cliente()
    {
        return $this->belongsTo(Cliente::class);
    }

    public function locacion()
    {
        return $this->belongsTo(Locacion::class);
    }

    public function revisionesIndividualMes($vehiculo, $mes, $anio)
    {
        $mantenimientos = Mantenimiento::with('proveedor')->where('vehiculo_id', $vehiculo)
            ->whereYear('fecha_ejecutado', '=', $anio)
            // ->whereYear('fecha_ejecutado', '=', \Carbon\Carbon::now()->year)
            ->whereMonth('fecha_ejecutado', '=', $mes)->orderBy('fecha_ejecutado', 'DESC')->get();
        return $mantenimientos;
    }

    public function revisionesIndividualYear($vehiculo, $year)
    {
        $mantenimientos = Mantenimiento::with('proveedor')->where('vehiculo_id', $vehiculo)
            ->whereYear('fecha_ejecutado', '=', $year)->orderBy('fecha_ejecutado', 'DESC')->get();
        return $mantenimientos;
    }

    protected $total;

    public function totalMes($vehiculo, $mes)
    {
        Mantenimiento::where('vehiculo_id', $vehiculo)
            ->whereYear('fecha_ejecutado', '=', \Carbon\Carbon::now()->year)
            ->whereMonth('fecha_ejecutado', '=', $mes)->get()
            ->each(function ($item) {
                $this->total = $item->aux + $this->total;
            });
        return $this->total;
    }

    public function totalYear($vehiculo, $year)
    {
        Mantenimiento::where('vehiculo_id', $vehiculo)
            ->whereYear('fecha_ejecutado', '=', $year)->get()
            ->each(function ($item) {
                $this->total = $item->aux + $this->total;
            });
        return $this->total;
    }

    public function recomendaciones()
    {
        return $this->hasMany(Recomendacion::class);
    }

    public function getKmActualAttribute()
    {
        return str_replace('.', '', $this->attributes['km_actual']);
    }
}
