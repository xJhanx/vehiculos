<?php

namespace App\Exports;

use App\HistorialRE;
use App\Recomendacion;
use App\Vehiculo;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;
use Maatwebsite\Excel\Concerns\WithEvents;
use Maatwebsite\Excel\Events\AfterSheet;

class PlanExport implements FromView, WithEvents, ShouldAutoSize
{
    protected $vehiculo;
    public function __construct(array $data)
    {
        $this->vehiculo = $data['vehiculo_id'];
        $this->year = $data['year'];
    }

    /**
     * @return \Illuminate\Support\Collection
     */
    public function view(): View
    {
        $vehiculo = Vehiculo::with(['recomendaciones.parte', 'recomendaciones.historialREs' => function ($query) {
            $query->whereYear('created_at', $this->year);
        }])->findOrFail($this->vehiculo);
        return view('admin.informes.vehiculos.plan', compact('vehiculo'));
    }

    public function registerEvents(): array
    {
        return [
            AfterSheet::class    => function (AfterSheet $event) {
                $cellRange = 'A1:W1'; // All headers
                $event->sheet->getDelegate()->getStyle($cellRange)->getFont()->setSize(14);
                $event->sheet->getDelegate()->getStyle('B1:W1')
                    ->getAlignment()->setWrapText(true);
                $event->sheet->getStyle('C1:W1', $event->sheet->getHighestRow())->getAlignment()->setWrapText(true);
            },

        ];
    }
}
