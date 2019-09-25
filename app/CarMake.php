<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CarMake extends Model
{
    public function carModel(){
        return $this->hasMany('App\CarModel', 'make_id', 'id');
    }
}
