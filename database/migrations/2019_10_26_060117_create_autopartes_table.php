<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAutopartesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::connection('company')->create('autopartes', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('nombre');
            $table->string('descripcion');
            $table->string('referencia')->nullable();
            $table->string('cantidad');
            $table->string('num_factura');
            $table->string('valor_unidad')->nullable();
            $table->string('moneda')->nullable();
            $table->unsignedInteger('vehiculo_id')->nullable();
            $table->unsignedInteger('proveedor_id')->nullable();

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
        Schema::connection('company')->dropIfExists('autopartes');
    }
}
