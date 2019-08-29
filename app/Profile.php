<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Profile extends Model
{
    public function city(){
        return $this->hasOne('App\City', 'id', 'city_id');
    }
}
