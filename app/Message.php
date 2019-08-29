<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Message extends Model
{
    public function city(){
        return $this->hasOne('App\MessageType', 'id', 'type');
    }
    public function user(){
        return $this->hasOne('App\User', 'id', 'sender_id');
    }
}
