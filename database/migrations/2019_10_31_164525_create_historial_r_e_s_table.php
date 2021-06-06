<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateHistorialRESTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::connection('company')->create('historial_r_e_s', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('parte')->nullable();
            $table->string('prioridad')->nullable();
            $table->string('frecuencia')->nullable();
            $table->string('fuente')->nullable();
            $table->string('km_actual')->nullable();
            $table->string('estado')->nullable();
            $table->date('fecha_programado')->nullable();
            $table->date('fecha_ejecutado')->nullable();
            $table->string('cant_programdo')->nullable();
            $table->string('cant_ejecutado')->nullable();
            $table->unsignedBigInteger('recomendacion_id')->nullable();
            $table->string('observacion')->nullable();
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
        Schema::connection('company')->dropIfExists('historial_r_e_s');
    }
}
