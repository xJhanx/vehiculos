<?php

namespace App\Exports;

use App\Vehiculo;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;
use Maatwebsite\Excel\Concerns\WithEvents;
use Maatwebsite\Excel\Events\AfterSheet;

// class InvoicesExport implements FromArray
class globalAnualExport implements FromView, WithEvents, ShouldAutoSize
{
    protected $yearFiltro;
    public function __construct(int $year)
    {
        $this->yearFiltro = $year;
    }

    /**
     * @return \Illuminate\Support\Collection
     */
    public function view(): View
    {
        $year = $this->yearFiltro;

        $vehiculos = Vehiculo::with(['mantenimientos.proveedor','mantenimientos' => function ($query) {
            $query->whereYear('fecha_ejecutado', $this->yearFiltro);
        }])->whereHas('mantenimientos')->toBase()->get();

        return view('admin.informes.vehiculos.globalYear', compact('vehiculos', 'year'));
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
