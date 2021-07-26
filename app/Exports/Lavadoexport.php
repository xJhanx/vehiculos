<?php

namespace App\Exports;

use App\Lavado;
use App\Vehiculo;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;
use Maatwebsite\Excel\Concerns\WithEvents;
use Maatwebsite\Excel\Events\AfterSheet;

class Lavadoexport implements FromView , WithEvents, ShouldAutoSize
{
    public function __construct($data)
    {
        $this->data = $data;
    }

    public function view(): View
    {
        $vehiculo = Vehiculo::findOrfail($this->data->vehiculo_id);
        $historial = Lavado::where('vehiculo_id', $this->data->vehiculo_id)->toBase()->get();
        return view('exports.kmexports', compact('historial', 'vehiculo'));
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
