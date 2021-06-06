<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class VehiculoRegisterRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [

            'tipo_servicio' => 'required',
            // 'estado' => 'required',
            'tipo_vehiculo' => 'required',
            'placa' => 'required|unique:company.vehiculos,placa',
            'marca' => 'required',
            'color' => 'required',
            // 'cilindraje' => 'required',
            // 'gps' => 'required',
            'propietario_id' => 'required'
        ];
    }
}
