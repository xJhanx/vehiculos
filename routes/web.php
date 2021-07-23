<?php

use App\Vehiculo;
use App\Mail\NotifyMail;
use Carbon\Carbon;
use App\Recomendacion;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Route;

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/', 'HomeController@index')->name('home');

Route::get('/test', function () {
    return Hash::make('secret');
});

Route::get(
    '/log', function (){
        Log::critical('hi');
    });


Route::get('/clear-cache', function () {
    $exitCode = Artisan::call('config:clear');
    $exitCode = Artisan::call('cache:clear');
    $exitCode = Artisan::call('config:cache');
    Cache::flush();
    return 'DONE'; //Return anything
});

Route::post('/enviar', 'ClienteController@contact')->name('enviar')->middleware('can:isGerente');

Route::get('/apigetproveedors', 'ProveedorController@get')->middleware('can:isGerente');

//Clientes
Route::resource('/clientes', 'ClienteController', ['except' => 'update'])->middleware('can:isGerente');;
Route::patch('/clientes/update', 'ClienteController@update')->name('clientes.update')->middleware('can:isGerente');

//Proveedores
Route::resource('/proveedors', 'ProveedorController', ['except' => 'update'])->middleware('can:isGerente');;
Route::patch('/proveedors/update', 'ProveedorController@update')->name('proveedors.update')->middleware('can:isGerente');

//Lavados

Route::resource('/lavados', 'LavadoController', ['except' => 'update', 'index'])->middleware('can:isManagmentMantenimientos');
Route::get('/lavados/auto/{placa}', 'LavadoController@index')->middleware('can:isManagmentMantenimientos');
Route::patch('/lavados/update', 'LavadoController@update')->name('lavados.update')->middleware('can:isManagmentMantenimientos');


//Proveedores
Route::resource('/partes', 'ParteController', ['except' => 'update'])->middleware('can:isGerente');;
Route::patch('/partes/update', 'ParteController@update')->name('partes.update')->middleware('can:isGerente');

//Propietarios
Route::resource('/propietarios', 'PropietarioController', ['except' => 'update'])->middleware('can:isGerente');;
Route::patch('/propietarios/update', 'PropietarioController@update')->name('propietarios.update')->middleware('can:isGerente');

//Locaciones
Route::resource('/locacions', 'LocacionController', ['except' => 'update'])->middleware('can:isGerente');;
Route::patch('/locacions/update', 'LocacionController@update')->name('locacions.update')->middleware('can:isGerente');

//Vehiculos
Route::resource('/vehiculos', 'VehiculoController', ['except' => 'update'])->middleware('can:isManagmentVehiculos');
Route::patch('/vehiculos/update', 'VehiculoController@update')->name('vehiculos.update')->middleware('can:isManagmentVehiculos');
Route::get('/vehiculos/getTotal/{id}', 'VehiculoController@getTotal')->middleware('can:isManagmentVehiculos');

//Mantenimientos
Route::resource('/mantenimientos', 'MantenimientoController', ['only' => ['store', 'destroy', 'edit']]);
Route::get('/mantenimientos/{placa?}', 'MantenimientoController@index')->middleware('can:isManagmentMantenimientos');
Route::put('/mantenimientos/update', 'MantenimientoController@update')->name('mantenimientos.update')->middleware('can:isManagmentMantenimientos');

//Recomendaciones
Route::resource('/recomendaciones', 'RecomendacionController')->middleware('can:isGerente');
Route::patch('/recomendaciones/update', 'RecomendacionController@update')->name('recomendaciones.update')->middleware('can:isGerente');

//Notificaciones
Route::resource('/notifysfecha', 'NotifyFechaController')->middleware('can:isGerente');
Route::resource('/notifyskm', 'NotifyKmController')->middleware('can:isGerente');
Route::get('/notifysdias', 'NotifyKmController@dias')->middleware('can:isGerente');

//Agregar Kilometros
Route::get('/aggkm', 'VehiculoController@aggkmView')->name('aggkm')->middleware('can:isGerente');
Route::post('/aggkm', 'VehiculoController@aggkm')->name('aggkm')->middleware('can:isGerente');

//Index Documentos
Route::resource('/documentos', 'DocumentacionController')->middleware('can:isGerente');

//index Kots
Route::resource('/kits', 'KitController')->middleware('can:isGerente');

//Historial Contratos
Route::resource('/contratos', 'ContratoController', ['only' => 'store'])->middleware('can:isManagmentMantenimientos');;
Route::get('/contratos/{placa?}', 'ContratoController@index')->middleware('can:isManagmentMantenimientos');
Route::get('/contratos/{placa?}/edit', 'ContratoController@edit')->middleware('can:isManagmentMantenimientos');
Route::patch('/contratos/update', 'ContratoController@update')->name('contratos.update')->middleware('can:isManagmentMantenimientos');

//Elemento
Route::resource('/elementos', 'ElementoController', ['except' => ['update', 'index']]);
Route::get('/elementos/miselementos/{elementos}', 'ElementoController@index')->name('elementos.index')->middleware('can:isGerente');
Route::patch('/elementos/update', 'ElementoController@update')->name('elementos.update')->middleware('can:isGerente');

//index Kots
Route::get('/informemg', 'InformeMGController@mg')->name('informemg')->middleware('can:isGerente');
Route::get('/informeyg', 'InformeMGController@yg')->name('informeyg')->middleware('can:isGerente');

Route::get('/informeplan/individual', 'InformeMGController@reportePlan')->name('reportePlan.individual')->middleware('can:isGerente');


//Excel
Route::get('/descarga/reporte/vista/mes', 'InformeMGController@vistaMes')->name('vista.mes')->middleware('can:isGerente');
Route::get('/descarga/reporte/vista/anual', 'InformeMGController@vistaAnual')->name('vista.anual')->middleware('can:isGerente');

Route::get('/descarga/plan/vista/anual', 'InformeMGController@vistaPlanAnual')->name('vista.plan.anual')->middleware('can:isGerente');

Route::get('/descarga/reporte/mes', 'InformeMGController@reporteDescargaMes')->name('reporte.mes')->middleware('can:isGerente');
Route::get('/descarga/reporte/gobal_mes', 'InformeMGController@reporteDescargaMesGlobal')->name('reporte.global_mes')->middleware('can:isGerente');

Route::get('/descarga/reporte/year', 'InformeMGController@reporteDescargaYear')->name('reporte.year')->middleware('can:isGerente');
Route::get('/descarga/reporte/gobal_year', 'InformeMGController@reporteDescargaYearGlobal')->name('reporte.global_year')->middleware('can:isGerente');


//Autopartes
Route::resource('/autopartes', 'AutoparteController', ['except' => 'update'])->middleware('can:isGerente');;
Route::patch('/autopartes/update', 'AutoparteController@update')->name('autopartes.update')->middleware('can:isGerente');

//Relacion
Route::resource('/relacions', 'RelacionController', ['except' => 'update'])->middleware('can:isGerente');;
Route::patch('/relacions/update', 'RelacionController@update')->name('relacions.update')->middleware('can:isGerente');

//index Historial de ejecutados
Route::get('/historialEjecutado/{recomendacion}', 'HistorialREController@index')->name('ejecutados')->middleware('can:isGerente');
Route::delete('/historialEjecutado/alls/{id}', 'HistorialREController@destroy')->middleware('can:isGerente');


//index Historial de km Registrados

Route::get('/historialkm',  function () {
    $vehiculos = Vehiculo::get(['id', 'placa', 'tipo_vehiculo', 'km_actual', 'marca', 'modelo']);
    return view('admin.informes.km', compact('vehiculos'));
})->name('historialkm')->middleware('can:isGerente');

Route::get('/historialkm/descargar', 'LavadoController@download')->name('historialkm.descargar')->middleware('can:isGerente');



//index de todos los matenimientos
Route::get('/Ejecutado/alls', 'HistorialREController@alls')->name('ejecutados.alls')->middleware('can:isGerente');
Route::get('/proveedores/select2', 'ProveedorController@select2')->middleware('can:isGerente');

//Hallazgos
Route::resource('/hallazgos', 'HallazgoController', ['except' => 'show', 'update', 'index'])->middleware('can:isManagmentMantenimientos');;
Route::get('/hallazgos/{placa}', 'HallazgoController@index')->middleware('can:isManagmentMantenimientos');
Route::patch('/hallazgos/update', 'HallazgoController@update')->name('hallazgos.update')->middleware('can:isManagmentMantenimientos');

//Notificar
Route::get('/notificar/km', 'NotifyFechaController@mostrarkm')->name('notifica.km');
Route::get('/notificar/dias', 'NotifyFechaController@mostrardias')->name('notifica.dias');
Route::get('/notificar/fc', 'NotifyFechaController@mostrarfc')->name('notifica.fc');

//Perfil del vehiclo 
Route::resource('/perfils', 'PerfilController', ['except' => 'update'])->middleware('can:isGerente');;

//Piezas informe 
Route::get('/piezas/informe', 'DescargaController@piezas')->name('piezas.informe')->middleware('can:isGerente');
Route::get('/download/informes', 'DescargaController@documentos')->name('documentos.todos')->middleware('can:isGerente');

Route::get('/search/vehiculo', 'VehiculoController@search')->name('vehiculo.buscar')->middleware('can:isGerente');

Route::get('descargas/cv/{vehiculo}', 'DescargaController@cv')->middleware('can:isGerente');

//Conductores
Route::resource('/conductores', 'ConductorController', ['except' => 'update'])->middleware('can:isManagmentDrivers');
Route::get('/conductor/detalles/{id?}', 'ConductorController@detalles')->middleware('can:isManagmentDrivers');
Route::patch('/conductores/update', 'ConductorController@update')->name('conductores.update')->middleware('can:isManagmentDrivers');

//Administradores
Route::resource('/admins', 'AdminController', ['except' => 'update'])->middleware('can:isSuperGerente');;
Route::patch('/admins/update', 'AdminController@update')->name('admins.update')->middleware('can:isSuperGerente');

//clientes company
Route::resource('/clientescompany', 'ClienteCompanyController', ['except' => 'update'])->middleware('can:isManagmentClientesCompany');;
Route::patch('/clientescompany/update', 'ClienteCompanyController@update')->name('clientescompany.update')->middleware('can:isManagmentClientesCompany');

//Designados BY company
Route::resource('/designados', 'DesignadoByCompanyController', ['except' => 'update'])->middleware('can:isClienteCompany');
Route::patch('/designados/update', 'DesignadoByCompanyController@update')->name('designados.update')->middleware('can:isClienteCompany');
//Designados BY company
Route::resource('/servicios', 'ServicioController', ['except' => 'update'])->middleware('can:isManagmentServices');
Route::patch('/servicios/update', 'ServicioController@update')->name('servicios.update')->middleware('can:isManagmentServices');

//Designados BY company
Route::resource('/solicitudes', 'SolicitudController', ['except' => 'update'])->middleware('can:isManagmentServices');;
Route::patch('/solicitudes/update', 'SolicitudController@update')->name('solicitudes.update')->middleware('can:isManagmentServices');

Route::get('/servicio/detalles/{id?}', 'ServicioController@detalles')->middleware('can:isManagmentServices');

Route::post('/solicitud-servicio', 'ServicioController@saveSolicitud')->middleware('can:isManagmentServices');

Route::view('servicios-register', '/admin/servicios/formRegister')->middleware('can:isManagmentServices');

//Designados BY company
Route::resource('/passengers', 'PassengerController', ['except' => 'update'])->middleware('can:isManagmentPassengers');
Route::patch('/passengers/update', 'PassengerController@update')->name('passengers.update')->middleware('can:isManagmentPassengers');

//View register service
Route::view('/register-service', 'admin.servicios.formRegister')->middleware('can:isManagmentServices');

Route::resource('/emergencycontacts', 'EmergencyContactController', ['except' => 'update'])->middleware('can:isManagmentDrivers');
Route::patch('/emergencycontacts/update', 'EmergencyContactController@update')->name('emergencycontacts.update')->middleware('can:isManagmentDrivers');

//Designados BY company
Route::resource('/documentcondutors', 'DocumentoConductorController', ['except' => 'update', 'show'])->middleware('can:isManagmentDrivers');;
Route::patch('/documentcondutors/update', 'DocumentoConductorController@update')->name('documentcondutors.update')->middleware('can:isManagmentDrivers');


Route::get('/getContacts/{id?}', 'EmergencyContactController@getContacts')->middleware('can:isManagmentDrivers');

Route::get('/documentcondutors/{id}', 'DocumentoConductorController@show')->middleware('can:isManagmentDrivers');

Route::get('/passengersOnService/{id}', 'ServicioController@showPassengers');
Route::get('/passengersapi', 'PassengerController@passengersapi')->middleware('can:isManagmentPassengers');

Route::post('/save-passengers-on-service', 'ServicioController@savePassengersOnService')->middleware('can:isManagmentPassengers');

Route::post('/appendvehiculo', 'ConductorController@appendvehiculo')->name('appendvehiculo')->middleware('can:isManagmentDrivers');
