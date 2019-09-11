<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class atribute extends Model
{
    public function type(){
        return $this->hasOne('App\atribute_type', 'id', 'type_id');
    }
}
