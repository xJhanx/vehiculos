<?php

use App\Vehiculo;
use App\Mail\NotifyMail;
use Carbon\Carbon;
use App\Recomendacion;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Route;

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/', 'HomeController@index')->name('home');

Route::get('/test', function () {
    return Hash::make('secret');
});

Route::get(
    '/log',

    function () {
        $companies = DB::connection('main')
            ->table('users')
            ->get();
        $unique = $companies->unique();

        foreach ($unique->values() as $company) {

            Config::set('database.connections.company.database', $company->company);
            DB::purge('company');
            $getByDocument = getByDocument();
            $getByKm = getByKm();
            $getByDias = getByDias();

            echo Mail::to('angellphp@gmail.com')->send(new NotifyMail($getByDocument, $getByKm, $getByDias));
        }
        // echo Mail::to('angellphp@gmail.com')->send(new NotifyMail($getByDocument, $getByKm, $getByDias));
    }
);

function getByDocument()
{

    try {
        $base = Carbon::now();
        $date =   $base->addDay(8)->format('Y-m-d');
        $opera =  $base->addDay(60)->format('Y-m-d');
        $crititalByDocument = Vehiculo::orWhere('vigencia_tarjeta_operaciones', '<', $opera)
            ->orWhere('vigencia_tecnomecanica', '<', $date)
            ->orWhere('vigencia_soat', '<', $date)
            ->orWhere('vigencia_poliza_tr', '<', $date)
            ->orWhere('vigencia_poliza_ct', '<', $date)
            ->orWhere('vigencia_poliza_ex_ct', '<', $date)->toBase()->get();

        $byTarjeta = collect($crititalByDocument)->filter(function ($vehiculo) use ($opera) {
            return $vehiculo->vigencia_tarjeta_operaciones < $opera && $vehiculo->vigencia_tarjeta_operaciones != null;
        });
        $byTecnomecanica = collect($crititalByDocument)->filter(function ($vehiculo) use ($date) {
            return $vehiculo->vigencia_tecnomecanica < $date && $vehiculo->vigencia_tecnomecanica != null;
        });
        $byPolizaTtr = collect($crititalByDocument)->filter(function ($vehiculo) use ($date) {
            return $vehiculo->vigencia_poliza_tr < $date && $vehiculo->vigencia_poliza_tr != null;
        });
        $byPolizaTtc = collect($crititalByDocument)->filter(function ($vehiculo) use ($date) {
            return $vehiculo->vigencia_poliza_ct < $date && $vehiculo->vigencia_poliza_ct != null;
        });
        $bySoat = collect($crititalByDocument)->filter(function ($vehiculo) use ($date) {
            return $vehiculo->vigencia_soat < $date && $vehiculo->vigencia_soat != null;
        });
        $byPolizaEx = collect($crititalByDocument)->filter(function ($vehiculo) use ($date) {
            return $vehiculo->vigencia_poliza_ex_ct < $date && $vehiculo->vigencia_poliza_ex_ct != null;
        });
        return [
            'byTarjeta' =>  $byTarjeta,
            'byTecnomecanica' =>  $byTecnomecanica,
            'byPolizaTtr' => $byPolizaTtr,
            'byPolizaTtc' => $byPolizaTtc,
            'bySoat' =>  $bySoat,
            'byPolizaEx' => $byPolizaEx,
        ];
    } catch (\Throwable $th) {
        throw $th->getMessage();
    }
}

function getByKm()
{

    $crititalByKm = array();

    try {
        Vehiculo::all()->each(function ($vehiculo) use ($crititalByKm) {
            Recomendacion::with('parte')->where('vehiculo_id', $vehiculo->id)->get()
                ->each(function ($recomendacion) use ($vehiculo, $crititalByKm) {
                    if ($recomendacion->parte != null) {
                        if ($recomendacion->parte->evaluacion == 'kms') {
                            if (($vehiculo->km_actual + 1500) >= $recomendacion->km_siguiente) {
                                array_push($crititalByKm, $vehiculo);
                            }
                        }
                    }
                });
        });

        return $crititalByKm;
    } catch (\Throwable $th) {
        return $th->getMessage();
    }
}


function getByDias()
{

    $crititalByDias = array();

    try {

        Vehiculo::all()->each(function ($vehiculo) use ($crititalByDias) {
            Recomendacion::with('parte')->where('vehiculo_id', $vehiculo->id)->get()
                ->each(function ($recomendacion) use ($vehiculo, $crititalByDias) {
                    if ($recomendacion->parte != null) {
                        if ($recomendacion->parte->evaluacion == 'dias') {
                            if ((Carbon::now()->addDay(8)) >= $recomendacion->fecha_siguiente) {
                                array_push($crititalByDias, $vehiculo);
                            }
                        }
                    }
                });
        });

        return $crititalByDias;
    } catch (\Throwable $th) {
        return $th->getMessage();
    }
}

Route::get('/clear-cache', function () {
    $exitCode = Artisan::call('config:clear');
    $exitCode = Artisan::call('cache:clear');
    $exitCode = Artisan::call('config:cache');
    Cache::flush();
    return 'DONE'; //Return anything
});

Route::post('/enviar', 'ClienteController@contact')->name('enviar');

Route::get('/apigetproveedors', 'ProveedorController@get');

//Clientes
Route::resource('/clientes', 'ClienteController', ['except' => 'update']);
Route::patch('/clientes/update', 'ClienteController@update')->name('clientes.update');

//Proveedores
Route::resource('/proveedors', 'ProveedorController', ['except' => 'update']);
Route::patch('/proveedors/update', 'ProveedorController@update')->name('proveedors.update');

//Lavados

Route::resource('/lavados', 'LavadoController', ['except' => 'update', 'index']);
Route::get('/lavados/auto/{placa}', 'LavadoController@index');
Route::patch('/lavados/update', 'LavadoController@update')->name('lavados.update');


//Proveedores
Route::resource('/partes', 'ParteController', ['except' => 'update']);
Route::patch('/partes/update', 'ParteController@update')->name('partes.update');

//Propietarios
Route::resource('/propietarios', 'PropietarioController', ['except' => 'update']);
Route::patch('/propietarios/update', 'PropietarioController@update')->name('propietarios.update');

//Locaciones
Route::resource('/locacions', 'LocacionController', ['except' => 'update']);
Route::patch('/locacions/update', 'LocacionController@update')->name('locacions.update');

//Vehiculos
Route::resource('/vehiculos', 'VehiculoController', ['except' => 'update']);
Route::patch('/vehiculos/update', 'VehiculoController@update')->name('vehiculos.update');
Route::get('/vehiculos/getTotal/{id}', 'VehiculoController@getTotal');

//Mantenimientos
Route::resource('/mantenimientos', 'MantenimientoController', ['only' => ['store', 'destroy', 'edit']]);
Route::get('/mantenimientos/{placa?}', 'MantenimientoController@index');
Route::put('/mantenimientos/update', 'MantenimientoController@update')->name('mantenimientos.update');

//Recomendaciones
Route::resource('/recomendaciones', 'RecomendacionController');
Route::patch('/recomendaciones/update', 'RecomendacionController@update')->name('recomendaciones.update');

//Notificaciones
Route::resource('/notifysfecha', 'NotifyFechaController');
Route::resource('/notifyskm', 'NotifyKmController');
Route::get('/notifysdias', 'NotifyKmController@dias');

//Agregar Kilometros
Route::get('/aggkm', 'VehiculoController@aggkmView')->name('aggkm');
Route::post('/aggkm', 'VehiculoController@aggkm')->name('aggkm');

//Index Documentos
Route::resource('/documentos', 'DocumentacionController');

//index Kots
Route::resource('/kits', 'KitController');

//Historial Contratos
Route::resource('/contratos', 'ContratoController', ['only' => 'store']);
Route::get('/contratos/{placa?}', 'ContratoController@index');
Route::get('/contratos/{placa?}/edit', 'ContratoController@edit');
Route::patch('/contratos/update', 'ContratoController@update')->name('contratos.update');

//Elemento
Route::resource('/elementos', 'ElementoController', ['except' => ['update', 'index']]);
Route::get('/elementos/miselementos/{elementos}', 'ElementoController@index')->name('elementos.index');
Route::patch('/elementos/update', 'ElementoController@update')->name('elementos.update');

//index Kots
Route::get('/informemg', 'InformeMGController@mg')->name('informemg');
Route::get('/informeyg', 'InformeMGController@yg')->name('informeyg');

Route::get('/informeplan/individual', 'InformeMGController@reportePlan')->name('reportePlan.individual');


//Excel
Route::get('/descarga/reporte/vista/mes', 'InformeMGController@vistaMes')->name('vista.mes');
Route::get('/descarga/reporte/vista/anual', 'InformeMGController@vistaAnual')->name('vista.anual');

Route::get('/descarga/plan/vista/anual', 'InformeMGController@vistaPlanAnual')->name('vista.plan.anual');

Route::get('/descarga/reporte/mes', 'InformeMGController@reporteDescargaMes')->name('reporte.mes');
Route::get('/descarga/reporte/gobal_mes', 'InformeMGController@reporteDescargaMesGlobal')->name('reporte.global_mes');

Route::get('/descarga/reporte/year', 'InformeMGController@reporteDescargaYear')->name('reporte.year');
Route::get('/descarga/reporte/gobal_year', 'InformeMGController@reporteDescargaYearGlobal')->name('reporte.global_year');


//Autopartes
Route::resource('/autopartes', 'AutoparteController', ['except' => 'update']);
Route::patch('/autopartes/update', 'AutoparteController@update')->name('autopartes.update');

//Relacion
Route::resource('/relacions', 'RelacionController', ['except' => 'update']);
Route::patch('/relacions/update', 'RelacionController@update')->name('relacions.update');

//index Historial de ejecutados
Route::get('/historialEjecutado/{recomendacion}', 'HistorialREController@index')->name('ejecutados');
Route::delete('/historialEjecutado/alls/{id}', 'HistorialREController@destroy');


//index Historial de km Registrados

Route::get('/historialkm',  function () {
    $vehiculos = Vehiculo::get(['id', 'placa', 'tipo_vehiculo', 'km_actual', 'marca', 'modelo']);
    return view('admin.informes.km', compact('vehiculos'));
})->name('historialkm');

Route::get('/historialkm/descargar', 'LavadoController@download')->name('historialkm.descargar');



//index de todos los matenimientos
Route::get('/Ejecutado/alls', 'HistorialREController@alls')->name('ejecutados.alls');
Route::get('/proveedores/select2', 'ProveedorController@select2');

//Hallazgos
Route::resource('/hallazgos', 'HallazgoController', ['except' => 'show', 'update', 'index']);
Route::get('/hallazgos/{placa}', 'HallazgoController@index');
Route::patch('/hallazgos/update', 'HallazgoController@update')->name('hallazgos.update');

//Notificar
Route::get('/notificar/km', 'NotifyFechaController@mostrarkm')->name('notifica.km');
Route::get('/notificar/dias', 'NotifyFechaController@mostrardias')->name('notifica.dias');
Route::get('/notificar/fc', 'NotifyFechaController@mostrarfc')->name('notifica.fc');

//Perfil del vehiclo 
Route::resource('/perfils', 'PerfilController', ['except' => 'update']);

//Piezas informe 
Route::get('/piezas/informe', 'DescargaController@piezas')->name('piezas.informe');
Route::get('/download/informes', 'DescargaController@documentos')->name('documentos.todos');

Route::get('/search/vehiculo', 'VehiculoController@search')->name('vehiculo.buscar');

Route::get('descargas/cv/{vehiculo}', 'DescargaController@cv');

//Conductores
Route::resource('/conductores', 'ConductorController', ['except' => 'update']);
Route::get('/conductor/detalles/{id?}', 'ConductorController@detalles');
Route::patch('/conductores/update', 'ConductorController@update')->name('conductores.update');

//Administradores
Route::resource('/admins', 'AdminController', ['except' => 'update']);
Route::patch('/admins/update', 'AdminController@update')->name('admins.update');

//clientes company
Route::resource('/clientescompany', 'ClienteCompanyController', ['except' => 'update']);
Route::patch('/clientescompany/update', 'ClienteCompanyController@update')->name('clientescompany.update');

//Designados BY company
Route::resource('/designados', 'DesignadoByCompanyController', ['except' => 'update']);
Route::patch('/designados/update', 'DesignadoByCompanyController@update')->name('designados.update');

//Designados BY company
Route::resource('/servicios', 'ServicioController', ['except' => 'update']);
Route::patch('/servicios/update', 'ServicioController@update')->name('servicios.update');

//Designados BY company
Route::resource('/solicitudes', 'SolicitudController', ['except' => 'update']);
Route::patch('/solicitudes/update', 'SolicitudController@update')->name('solicitudes.update');

Route::get('/servicio/detalles/{id?}', 'ServicioController@detalles');