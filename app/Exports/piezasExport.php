<?php

namespace App\Exports;

use App\Autoparte;
use Illuminate\View\View;
use Maatwebsite\Excel\Concerns\FromView;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;
use Maatwebsite\Excel\Concerns\WithEvents;
use Maatwebsite\Excel\Events\AfterSheet;

class piezasExport implements FromView, WithEvents, ShouldAutoSize
{

    /**
     * @return \Illuminate\Support\Collection
     */
    public function view(): View
    {
        $piezas = Autoparte::where('cantidad', '>','0')->toBase()->get();
        return view('descargas.piezas', compact('piezas'));
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
