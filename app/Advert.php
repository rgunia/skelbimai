<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Advert extends Model
{
    public function category(){
        return $this->hasOne('App\Category', 'id', 'category_id');
    }

    public function getRouteKeyName()
    {
        return 'slug';
    }
    public function user(){
        return $this->hasOne('App\User', 'id', 'user_id');
    }
    public function city(){
        return $this->hasOne('App\City', 'id', 'city_id');
    }
    public function attributeSet(){
        return $this->hasOne('App\atribute_set', 'id', 'atribute_set_id');
    }
    public function attributeValues(){
        return $this->hasMany('App\atribute_values', 'advert_id', 'id');
    }
}
