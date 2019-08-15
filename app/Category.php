<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{

    public function getRouteKeyName()
    {
        return 'slug';
    }
    public function adverts(){
        return $this->hasMany('App\Advert', 'category_id', 'id');
    }

    public function subCategory(){
        return $this->hasMany('App\Category', 'parent_id', 'id');
    }
    public function mainCategory(){
        return $this->hasMany('App\Category', 'id', 'parent_id');
    }
}
