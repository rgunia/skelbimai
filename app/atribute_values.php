<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class atribute_values extends Model
{
    public function attributeOfValue()
    {
       return $this->hasOne('App\atribute', 'id', 'attribute_id' );
    }
}
