<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateElementosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::connection('company')->create('elementos', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('descripcion');
            $table->enum('disponibilidad', array('Si', 'No','Incompleto'));
            $table->text('observacion')->nullable();
            $table->string('cantidad')->nullable();
            $table->string('tipo')->nullable();
            $table->string('vehiculo_placa');
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
        Schema::connection('company')->dropIfExists('elementos');
    }
}
