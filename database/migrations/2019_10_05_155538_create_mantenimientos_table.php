<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMantenimientosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::connection('company')->create('mantenimientos', function (Blueprint $table) {
            $table->bigIncrements('id');

            $table->unsignedInteger('proveedor_id')->nullable();
            $table->unsignedInteger('vehiculo_id')->nullable();

            $table->string('factura')->nullable();
            $table->enum('tipo', array('Preventivo', 'Correctivo'));
            $table->string('km_actual')->nullable();
            $table->string('km_siguiente')->nullable();
            $table->longText('descripcion')->nullable();
            $table->string('subtotal')->nullable();
            $table->date('fecha_ejecutado')->nullable();
            $table->string('short')->nullable();
            $table->decimal('aux',6,2)->nullable();
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
        Schema::connection('company')->dropIfExists('mantenimientos');
    }
}
