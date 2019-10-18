<?php

namespace App\Http\Controllers;

use App\Advert;
use App\atribute_set;
use App\atribute_values;
use App\Category;
use App\CategoryAttributeSetRealations;
use App\City;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use Illuminate\View\View;

class SearchController extends Controller
{
    public function search(Request $request){

        $category = $request->searchCategoryId;
        $mark =$request->mark;
        $model = $request->model;
        $priceFrom = $request->priceFrom;
        $priceTo = $request->priceTo;
        $yearFrom = $request->yearFrom;
        $yearTo = $request->yearTo;
        $petrolType = $request->petrolType;
        $bodyType = $request->bodyType;

        $advertsIdByModel = array();
        if($model != 'Modelis'){
            $carsByMark = atribute_values::where('value', $model)->get();
            foreach ($carsByMark as $carByMark) {
                $advertsIdByModel[] = $carByMark->advert_id;
            }
        }else{
            $carsByMark = Advert::all();
            foreach ($carsByMark as $carByMark) {
                $advertsIdByModel[] = $carByMark->id;
            }
        }

//sets default price range
        if($priceFrom == 'Kaina nuo'){
            $priceFrom = 0;
        }
        if($priceTo == 'Kaina iki'){
            $priceTo = 100000;
        }
//make array of price range
        $priceFromTo = array();
        while($priceFrom <= $priceTo){
            $priceFromTo[] = $priceFrom;
            $priceFrom++;
        }
//make array of adverts id`s in price range
        $adverts = Advert::whereIn('id', $advertsIdByModel)->get();


        $advertsIdByModelPrice = array();
        foreach ($adverts as $advert){
            foreach ($priceFromTo as $price){
                if($advert->price == $price){
                    $advertsIdByModelPrice[] = $advert->id;
                }
            }
        }

//sets default year range
        if($yearFrom == 'Metai nuo'){
            $yearFrom = 1930;
        }
        if($yearTo == 'Metai iki'){
            $yearTo = 2020;
        }
//make array of year range

        $yearFromTo = array();
        while($yearFrom <= $yearTo){
            $yearFromTo[] = $yearFrom;
            $yearFrom++;
        }

//make array of adverts id`s in year range
        $adverts = atribute_values::whereIn('advert_id', $advertsIdByModelPrice)->get();

        $advertsIdByModelPriceYear = array();
        foreach ($adverts as $advert){
            foreach ($yearFromTo as $year){
                if($advert->value == $year){
                    $advertsIdByModelPriceYear[] = $advert->advert_id;
                }
            }
        }

//takes filtrated ids by model and price and year and filtrates them by petrol type
        if($petrolType != 'Kuro tipas'){
            $advertsIdByModelPriceYearPetrol = array();

            foreach ($advertsIdByModelPriceYear as $idByModelPriceYear){
                $advertsByPetrol = atribute_values::where('advert_id', $idByModelPriceYear)->where('value', $petrolType)->first();
                if(!empty($advertsByPetrol->advert_id)){
                    $advertsIdByModelPriceYearPetrol[] = $advertsByPetrol->advert_id;
                }
            }
        }

//takes filtrated ids by model and price and year and filtrates them by body type
        if($bodyType != 'Kėbulo tipas'){
            $advertsIdByModelPriceYearPetrolBody = array();

            foreach ($advertsIdByModelPriceYear as $idByModelPriceYear){
                $advertsByYearPetrolBody = atribute_values::where('advert_id', $idByModelPriceYear)->where('value', $bodyType)->first();
                if(!empty($advertsByYearPetrolBody->advert_id)){
                    $advertsIdByModelPriceYearPetrolBody[] = $advertsByYearPetrolBody->advert_id;
                }
            }

        }

        if($petrolType != 'Kuro tipas' && $bodyType != 'Kėbulo tipas'){
            $data['adverts'] = Advert::whereIn('id', $advertsIdByModelPriceYear)->get();
        }elseif ($bodyType != 'Kėbulo tipas'){
            $data['adverts'] = Advert::whereIn('id', $advertsIdByModelPriceYearPetrolBody)->get();
        }elseif ($petrolType != 'Kuro tipas'){
            $data['adverts'] = Advert::whereIn('id', $advertsIdByModelPriceYearPetrol)->get();
        }else{
            $data['adverts'] = Advert::whereIn('id', $advertsIdByModelPriceYear)->get();
        }
        return view('search.results', $data);
    }
}
