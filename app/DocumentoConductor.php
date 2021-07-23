<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DocumentoConductor extends Model
{

    protected $connection = 'company';

    protected  $fillable = [
        'descripcion',
        'img',
        'conductor_id'
    ];
}
