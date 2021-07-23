<?php

namespace App\Http\Controllers;

use App\Conductor;
use App\DocumentoConductor;
use App\Http\Requests\DocumentoConductorSaveRequest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Log;

class DocumentoConductorController extends Controller
{
    public function __construct()
    {
        $this->middleware(['auth', 'database']);
    }

    public function store(Request $request)
    {
        if (request()->expectsJson()) {
            try {

                if ($request->file('file')) {
                    $Evidencia = new DocumentoConductor();
                    $filename =  time() . '.' . $request->file('file')->getClientOriginalExtension();
                    $request->file('file')->move(public_path() . "/file", $filename);
                    $Evidencia->img = $filename;
                    $Evidencia->descripcion = $request->descripcion;
                    $Evidencia->conductor_id = $request->conductor_id;
                    $Evidencia->save();
                    return response('Registrado exitosamente', 200);
                }
            } catch (\Throwable $th) {
                return response($th->getMessage());
            }
        }
    }

    public function show($id)
    {
        $conductor = Conductor::findOrFail($id);

        $documentos = $conductor->documento_conductors()->get();
        return response($documentos);
    }

    public function destroy($evicencia)
    {
        try {
            $delete = DocumentoConductor::findOrFail($evicencia);
            File::delete(public_path('/file/' . $delete->img));
            $delete->delete();
            return response('Recurso eliminado correctamente');
        } catch (\Throwable $th) {
            return response($th->getMessage());
        }
    }
}
