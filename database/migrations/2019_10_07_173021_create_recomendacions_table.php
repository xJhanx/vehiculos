<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRecomendacionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::connection('company')->create('recomendacions', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('vehiculo_id');
            $table->string('parte_id')->nullable();
            $table->string('seguimiento')->nullable();
            // $table->string('fuente')->nullable();
            
            $table->string('cant_programado')->nullable();
            $table->string('cant_ejecutado')->nullable();

            $table->string('especificacion')->nullable();
            $table->string('observacion')->nullable();
            $table->date('fecha_programado')->nullable();
            $table->date('fecha_actual')->nullable();
            $table->string('km_actual')->nullable();
            $table->string('km_siguiente')->nullable();
            $table->string('fecha_siguiente')->nullable();
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
        Schema::connection('company')->dropIfExists('recomendacions');
    }
}
