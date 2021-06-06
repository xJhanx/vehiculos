<?php

namespace App\Http\Controllers;

use App\Kit;
use App\Vehiculo;
use Illuminate\Http\Request;

class KitController extends Controller
{
    public function __construct()
    {
        $this->middleware(['auth', 'database']);
    }



    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if ($request->expectsJson()) {
            return datatables()->of(Vehiculo::query()->with('propietario')->orderBy('id', 'DESC')->get())
                ->addColumn('action', 'admin.kits.actions')
                ->rawColumns(['action'])
                ->addIndexColumn()
                ->make(true);
        }
        return view('admin.kits.index');
    }

}
