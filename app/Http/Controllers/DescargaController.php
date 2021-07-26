<?php

namespace App\Http\Controllers;

use App\Elemento;
use App\Exports\documentosExport;
use App\Exports\piezasExport;
use App\Vehiculo;
use Illuminate\Support\Facades\Auth;
use Maatwebsite\Excel\Facades\Excel;
use PhpOffice\PhpSpreadsheet\IOFactory;
use PhpOffice\PhpSpreadsheet\Worksheet\Drawing;

class DescargaController extends Controller
{
    public function piezas()
    {
        return Excel::download(new piezasExport(), 'autopartes.xls');
    }

    public function documentos()
    {
        return Excel::download(new documentosExport(), 'documentos.xls');
    }



    public function cv($id)
    {
        try {
            $orden = "./file/" . $this->getVehiculo($id) . ".xls";
            return response()->download($orden)->deleteFileAfterSend(true);
        } catch (\Throwable $th) {
            throw $th;
        }
    }

    public function getVehiculo($id)
    {
        try {

            $vehiculo = Vehiculo::with('mantenimientos', 'mantenimientos.proveedor', 'contratos', 'perfil', 'lavados', 'mantenimientos', 'propietario')->findOrfail($id);


            $spreadsheet = IOFactory::load('./file/cv.xls');
            $worksheet = $spreadsheet->getActiveSheet();


            $worksheet->getCell('A10')->setValue($vehiculo->placa);


            if (Auth::user()->company == 'operac_riogrande') {
                $sheeti = new Drawing();
                $sheeti->setName('name');
                $sheeti->setDescription('description');
                $sheeti->setPath("./img_perfiles/riogrande.png");
                $sheeti->setHeight(90);
                // $sheeti->setWidth(200);
                $sheeti->setCoordinates("A1");
                $sheeti->setOffsetX(10);
                $sheeti->setOffsetY(10);
                $sheeti->setWorksheet($worksheet);
            }

            if($vehiculo->perfil){
            $sheeti = new Drawing();
            $sheeti->setName('name');
            $sheeti->setDescription('description');
            $sheeti->setPath("./img_perfiles/{$vehiculo->perfil->img}");
            $sheeti->setHeight(200);
            // $sheeti->setWidth(200);
            $sheeti->setCoordinates("A6");
            $sheeti->setOffsetX(10);
            $sheeti->setOffsetY(10);
            $sheeti->setWorksheet($worksheet);
                    
            }


            $worksheet->getCell('A18')->setValue($vehiculo->propietario->nombre);
            $worksheet->getCell('A22')->setValue($vehiculo->propietario->nombre);
            $worksheet->getCell('B14')->setValue($vehiculo->vigencia_soat);
            $worksheet->getCell('D14')->setValue($vehiculo->vigencia_tecnicomecanica);
            $worksheet->getCell('G14')->setValue($vehiculo->vigencia_poliza_ct);
            $worksheet->getCell('H14')->setValue($vehiculo->vigencia_poliza_ex_ct);
            $worksheet->getCell('H22')->setValue($vehiculo->propietario->identificacion);
            $worksheet->getCell('J14')->setValue($vehiculo->vigencia_poliza_tr);
            $worksheet->getCell('M14')->setValue($vehiculo->numero_tarjeta_operaciones);
            $worksheet->getCell('E10')->setValue($vehiculo->tipo_vehiculo);
            $worksheet->getCell('E12')->setValue($vehiculo->cilindraje);
            $worksheet->getCell('I10')->setValue($vehiculo->marca);
            $worksheet->getCell('I12')->setValue($vehiculo->tipo_servicio);
            $worksheet->getCell('K10')->setValue($vehiculo->color);
            $worksheet->getCell('K12')->setValue($vehiculo->numero_licencia);
            $worksheet->getCell('K2')->setValue($vehiculo->placa);
            $worksheet->getCell('C4')->setValue($vehiculo->created_at);
            $worksheet->getCell('C8')->setValue(($vehiculo->propietario->nombre == 'TRANSPORTES RIO GRANDE') ? 'X' : '');
            $worksheet->getCell('J4')->setValue($vehiculo->updated_at);
            $worksheet->getCell('J45')->setValue(($vehiculo->capacidad_toneladas == 0) ? $vehiculo->capacidad_litros . 'Lt' : $vehiculo->capacidad_toneladas . 'Tl');
            $worksheet->getCell('L45')->setValue($vehiculo->capacidad_pasajeros);


            $num = 70;
            foreach ($vehiculo->mantenimientos as $mantenimiento) {


                $worksheet->getCell('A' . $num)->setValue($mantenimiento->fecha_ejecutado);
                $worksheet->getCell('B' . $num)->setValue($mantenimiento->descripcion);
                $worksheet->getCell('D' . $num)->setValue($mantenimiento->tipo);
                $worksheet->getCell('F' . $num)->setValue($mantenimiento->descripcion);
                $worksheet->getCell('H' . $num)->setValue($mantenimiento->proveedor->nombre);
                $worksheet->getCell('L' . $num)->setValue($mantenimiento->km_actual);
                $worksheet->getCell('M' . $num)->setValue($mantenimiento->aux);


                $num++;
            }

            $elementos = Elemento::where('vehiculo_placa', $vehiculo->placa)->toBase()->get();
            $herramienta = "";
            $carretera = "";
            $Botiquin = "";

            foreach ($elementos as  $elemento) {

                if ($elemento->tipo == 'Herramienta') {
                    $herramienta .= $elemento->descripcion . "      -       ";
                }
                if ($elemento->tipo == 'Kit de carretera') {
                    $carretera .= $elemento->descripcion . "      -       ";
                }
                if ($elemento->tipo == 'Botiquin') {
                    $Botiquin .= $elemento->descripcion . "      -       ";
                }
            }

            $worksheet->getCell('A51')->setValue($herramienta);
            $worksheet->getCell('A54')->setValue($carretera);
            $worksheet->getCell('A57')->setValue($Botiquin);


            $writer = IOFactory::createWriter($spreadsheet, 'Xls');
            $writer->save("./file/" . $vehiculo->id . ".xls");

            return $vehiculo->id;
        } catch (\Throwable $th) {
            throw $th;
        }
    }
}
