<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateContratosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::connection('company')->create('contratos', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedInteger('cliente_id');
            $table->unsignedInteger('vehiculo_id');
            $table->date('finicio')->nullable();
            $table->date('ffin')->nullable();
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
        Schema::connection('company')->dropIfExists('contratos');
    }
}
