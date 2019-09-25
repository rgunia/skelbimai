<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class atribute extends Model
{
    public function type(){
        return $this->hasOne('App\atribute_type', 'id', 'type_id');
    }
    public function carMake(){
        return $this->hasMany('App\CarMake', 'attribute_id', 'id');
    }
    public function data(){
        return $this->hasMany('App\AttributeData', 'attribute_id', 'id');
    }
}
