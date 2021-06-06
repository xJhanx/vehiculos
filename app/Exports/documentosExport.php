<?php

namespace App\Exports;

use App\Vehiculo;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\FromView;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;
use Maatwebsite\Excel\Concerns\WithEvents;
use Maatwebsite\Excel\Events\AfterSheet;
use Illuminate\Contracts\View\View;

class documentosExport implements FromView, WithEvents, ShouldAutoSize
{
    
    public function view(): View
    {

        $vehiculos = Vehiculo::toBase()->get();

        return view('descargas.documentos', compact('vehiculos'));
    }

    public function registerEvents(): array
    {
        return [
            AfterSheet::class    => function (AfterSheet $event) {
                $cellRange = 'A1:AL1'; // All headers
                $event->sheet->getDelegate()->getStyle($cellRange)->getFont()->setSize(12);
                $event->sheet->getDelegate()->getStyle('B1:AL1')
                    ->getAlignment()->setWrapText(true);
                $event->sheet->getStyle('B1:AL1', $event->sheet->getHighestRow())->getAlignment()->setWrapText(true);
            },

        ];
    }
}
