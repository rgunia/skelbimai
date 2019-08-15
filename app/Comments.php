<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Comments extends Model
{
    public function user(){
        return $this->hasOne('App\User', 'id', 'user_id');
    }
}
