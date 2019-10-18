<?php

namespace App\Http\Controllers;

use App\atribute;
use App\atribute_set;
use App\AttributeData;
use App\CarMake;
use App\Category;
use App\CategoryAttributeSetRealations;
use App\City;
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

    public function searchBlock (Request $request)
    {
        $data['categories']= Category::all();
        $data['carMakes'] = CarMake::all();
        $attributesData = AttributeData::all();
        foreach ($attributesData as $attributeData){
            switch($attributeData->attribute_id){
                case 35: $data['metai'][] = $attributeData;
                    break;
                case 37: $data['kuroTipas'][] = $attributeData;
                    break;
                case 38: $data['kebuloTipas'][] = $attributeData;
                    break;
            }
    }


        return View::make('adverts.additional.searchBlock')->with('data', $data)->render();
    }

}
