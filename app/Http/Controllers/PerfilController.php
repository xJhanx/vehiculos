<?php

namespace App\Http\Controllers;

use App\Perfil;
use Illuminate\Http\Request;

class PerfilController extends Controller
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
    public function store(Request $request)
    {
        if (request()->expectsJson()) {
            try {
                if ($request->file('file')) {
                    $documento = new Perfil();
                    $filename = '_' . time() . '.' . $request->file('file')->getClientOriginalExtension();
                    $request->file('file')->move(public_path() . "/img_perfiles", $filename);
                    $documento->img = $filename;
                    $documento->vehiculo_id = $request->vehiculo_id;
                    $documento->save();
                    return response('Registrado exitosamente', 200);
                }
            } catch (\Throwable $th) {
                return response($th->getMessage());
            }
        }
    }

    public function destroy($key)
    {
        $documentacion = Perfil::findOrFail($key);
        \File::delete(public_path('/img_perfiles/' . $documentacion->img));
        $documentacion->delete();
        return back();
    }
}
