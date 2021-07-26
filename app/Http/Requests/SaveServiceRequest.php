<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class SaveServiceRequest extends FormRequest
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
            'date_create' => 'required',
            'hour_create' => 'required',
            'hour_create' => 'required',
            'car_id' => 'required',
            'pickupaddress' => 'required',
            'districtpoint' => 'required',
            'destinyaddress' => 'required',
            'districtdestiny' => 'required'
        ];
    }
}
