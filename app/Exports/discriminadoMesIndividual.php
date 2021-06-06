<?php

namespace App\Exports;

use App\Vehiculo;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;
use Maatwebsite\Excel\Concerns\WithEvents;
use Maatwebsite\Excel\Events\AfterSheet;

class discriminadoMesIndividual implements FromView,WithEvents, ShouldAutoSize

{
    protected $mesFiltro, $vehiculo;
    public function __construct(int $vehiculo, int $mes, int $anio)
    {
        $this->mesFiltro = $mes;
        $this->vehiculo = $vehiculo;
        $this->anio = $anio;
    }

    /**
     * @return \Illuminate\Support\Collection
     */
    public function view(): View
    {

        $vehiculo = Vehiculo::findOrFail($this->vehiculo);
        $mes = $this->mesFiltro;
        $anio = $this->anio;
        return view('admin.informes.vehiculo.mes', compact('vehiculo', 'mes', 'anio'));
    }

    public function registerEvents(): array
    {
        return [
            AfterSheet::class    => function (AfterSheet $event) {
                $cellRange = 'A1:W1'; // All headers
                $event->sheet->getDelegate()->getStyle($cellRange)->getFont()->setSize(14);
            },
        ];
    }
}
