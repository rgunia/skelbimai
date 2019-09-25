<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class atribute_set extends Model
{
    public function relations(){
        return $this->hasMany('App\atribute_set_realations', 'attribute_set_id', 'id');
    }
    public function category(){
        return $this->hasOne('App\CategoryAttributeSetRealations', 'attribute_set_id', 'id');
    }
}
