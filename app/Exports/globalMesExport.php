<?php

namespace App\Exports;

use App\Vehiculo;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;
use Maatwebsite\Excel\Concerns\WithEvents;
use Maatwebsite\Excel\Events\AfterSheet;

// class UsersExport implements FromCollection, WithHeadings, ShouldAutoSize, WithEvents

class globalMesExport implements FromView, WithEvents, ShouldAutoSize
{

    protected $mesFiltro;
    public function __construct(int $mes)
    {
        $this->mesFiltro = $mes;
    }

    /**
     * @return \Illuminate\Support\Collection
     */
    public function view(): View
    {
        $mes = $this->mesFiltro;

        $vehiculos = Vehiculo::with(['mantenimientos.proveedor', 'mantenimientos' => function ($query) use ($mes) {
            $query
                ->whereYear('fecha_ejecutado', \Carbon\Carbon::now()->year)
                ->whereMonth('fecha_ejecutado', $mes)->orderBy('fecha_ejecutado', 'desc');
        }])->whereHas('mantenimientos')->toBase()->get();

        return view('admin.informes.vehiculos.globalMes', compact('vehiculos', 'mes'));
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
