<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class EmergencyContact extends Model
{
    protected $connection = 'company';
    
    protected $guarded = [];
}
