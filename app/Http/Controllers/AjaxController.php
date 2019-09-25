<?php

namespace App\Http\Controllers;

use App\atribute;
use App\CarMake;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\View;


class AjaxController extends Controller
{
    public function carModelResposne(Request $request){
        $makeId = $request->markID;
        $make = CarMake::find($makeId);
        $models = $make -> carModel;


    return View::make('adverts.additional.modelSelect')->with('models', $models)->render();
    }

}
