<?php

namespace App\Exports;

use App\Mantenimiento;
use App\Vehiculo;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;
use Maatwebsite\Excel\Concerns\WithEvents;
use Maatwebsite\Excel\Events\AfterSheet;


class discriminadoYearIndividual implements  FromView,WithEvents, ShouldAutoSize

{
    protected $yearFiltro, $vehiculo;
    public function __construct(int $vehiculo, int $year)
    {
        $this->yearFiltro = $year;
        $this->vehiculo = $vehiculo;
    }

    /**
     * @return \Illuminate\Support\Collection
     */
    public function view(): View
    {
        $vehiculo = Vehiculo::findOrFail($this->vehiculo);
        $year = $this->yearFiltro;
        return view('admin.informes.vehiculo.year', compact('vehiculo', 'year'));
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
