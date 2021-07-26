<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class PassworrRequest extends FormRequest
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
            'password' => 'required|string|confirmed|min:8',
        ];
    }
    public function messages()
    {
        return [
            'password.confirmed' => 'Las password no coinciden',
            'password.min' => 'La longitud no es la correcta'
        ];
    }
}
