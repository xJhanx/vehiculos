<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateVehiculosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::connection('company')->create('vehiculos', function (Blueprint $table) {

            $table->increments('id');
            $table->enum('tipo_servicio', array('Publico', 'Particular'));
            $table->enum('estado', array('Activo', 'Inactivo'));
            $table->enum('tipo_vehiculo', array('Camioneta', 'Buseta', 'Bus', 'Microbus', 'Carrotanque', 'Maquinaria amarilla'));
            $table->string('placa');
            $table->string('marca');
            $table->string('modelo')->nullable();
            // $table->date('matricula')->nullable();
            $table->string('cilindraje')->nullable();

            $table->string('capacidad_pasajeros')->default(0)->nullable();
            $table->string('capacidad_litros')->default(0)->nullable();
            $table->string('capacidad_toneladas')->default(0)->nullable();

            $table->string('tipo_combustible');
            $table->string('color');
            $table->string('serie')->nullable();
            
            $table->string('numero_licencia')->nullable();
            $table->string('fecha_licencia')->nullable();

            $table->string('numero_tarjeta_operaciones')->nullable();
            $table->date('vigencia_tarjeta_operaciones')->nullable();

            $table->string('numero_tecnomecanica')->nullable();
            $table->date('vigencia_tecnomecanica')->nullable();
            $table->string('numero_soat')->nullable();
            $table->date('vigencia_soat')->nullable();
            $table->string('aseguradora_poliza_tr')->nullable();
            $table->string('numero_poliza_tr')->nullable();
            $table->date('vigencia_poliza_tr')->nullable();
            $table->string('aseguradora_poliza_ct')->nullable();
            $table->string('numero_poliza_ct')->nullable();
            $table->date('vigencia_poliza_ct')->nullable();
            $table->string('aseguradora_poliza_ex_ct')->nullable();
            $table->string('numero_poliza_ex_ct')->nullable();
            $table->date('vigencia_poliza_ex_ct')->nullable();
            // $table->string('numero_contrato')->nullable();
            $table->date('fecha_ingreso_contrato')->nullable();
            $table->enum('gps', array('Si', 'No'))->nullable();
            $table->enum('kit', array('Si', 'No', 'Incompleto'))->nullable();
            $table->enum('botiquin', array('Si', 'No','Incompleto'))->nullable();
            $table->longText('recomendacion')->nullable();
            $table->string('km_actual')->nullable();
            $table->unsignedInteger('locacion_id')->nullable();
            $table->unsignedInteger('propietario_id')->nullable();

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::connection('company')->dropIfExists('vehiculos');
    }
}
