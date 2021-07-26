<?php

namespace Tests\Feature;

use App\Servicio;
use Illuminate\Foundation\Testing\DatabaseMigrations;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Config;
use Tests\TestCase;

class ServicioManagmentTest extends TestCase
{

    use DatabaseMigrations;

    /**
     * A basic feature test example.
     *
     * @return void
     */
    public function testSaveService()
    {
        $this->withoutExceptionHandling();

        // $response = $this->post('/solicitud-servicio', [

        //     'created_date' => '2021-06-05',
        //     'approved_date' => '2021-06-05',
        //     'conductor_id' => '5',
        //     'vehiculo_id' => '5',
        //     'empresa_id' => '5',
        //     'punto_inicio' => 'Torcoroma',
        //     'punto_fin' => 'Perta del 20 ',
        //     'estado' => 'Solicitado',
        //     'observaciones' => 'observacion',
        //     'date' => '2021-06-05',
        //     'hour' => '8:45',

        // ]);

        // $response->assertOk();

        $this->assertCount(1, Servicio::all());

        $servicio = Servicio::first();

        // Verificamos si los datos de mi servicio creado son iguales a los que mande
        $this->assertEquals('Solicitado', $servicio->estado);
    }
}
