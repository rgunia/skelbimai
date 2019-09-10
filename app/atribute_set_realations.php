<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class atribute_set_realations extends Model
{
    public function attributes(){
        return $this->hasOne('App\atribute', 'id', 'attribute_id');
    }
}
