<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateClientesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::connection('company')->create('clientes', function (Blueprint $table) {
            $table->increments('id');
            $table->string('nombre');
            $table->string('apellido')->nullable();
            $table->string('email')->nullable();
            $table->string('identificacion')->unique();
            $table->string('tipo_identificacion');
            $table->string('ciudad')->nullable();
            $table->string('departamento')->nullable();
            $table->string('direccion')->nullable();
            $table->string('barrio')->nullable();
            $table->string('telefono')->nullable();
            $table->string('opcional_telefono')->nullable();
            $table->string('fullname')->nullable();
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
        Schema::connection('company')->dropIfExists('clientes');
    }
}
