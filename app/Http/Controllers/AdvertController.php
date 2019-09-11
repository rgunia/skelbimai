<?php

namespace App\Http\Controllers;

use App\Advert;
use App\atribute;
use App\atribute_set;
use App\atribute_values;
use App\Category;
use App\City;
use App\Comments;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;
use Carbon\Carbon;

class AdvertController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('adverts.index');


    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $user = Auth::user();
        if($user && ($user->hasRole('admin') || $user->hasRole('client'))) {

            $categories = Category::where('active', '=', 1)->get();
            $data['categories'] = $categories;
            $data['cities'] = City::all();
            return view('adverts.create', $data);
        }else{
            return 'Log in to create advert';
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $user = Auth::user();
        if($user && ($user->hasRole('admin') || $user->hasRole('client'))) {
            $advert = new Advert();
            $advert->title = $request->title;
            $advert->content = $request->content_text;
            $advert->image = $request->image;
            $advert->price = $request->price;
            $advert->user_id = Auth::user()->id;
            $advert->category_id = $request->category_id;
            $advert->city_id = $request->city_id;

            $date = Carbon::now()->addMonths(3)->toDateTimeString(); //advert expiration date and time
            $advert->expiration_date = $date;

            $slug = Str::slug($request->title);

            if (Advert::where('slug', $slug)->first()) {
                $lastRecord = Advert::all()->last();
                $lastRecordId = $lastRecord->id;
                $advertId = $lastRecordId + 1;
                $advert->slug = Str::slug($request->title) . "-" . $advertId;
            }  // It exists
            else {
                $advert->slug = Str::slug($request->title);
            }

            $advert->save();

        }else{
            return 'no permission';
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Advert $advert)
    {
        if($advert->active == 1) {
            $comments = Comments::where('advert_id', '=', $advert->id)->where('active', '=', 1)->get();
            $data['comments'] = $comments;
            $data['advert'] = $advert;
            return view('adverts.single', $data);
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $user = Auth::user();
        if($user && ($user->hasRole('admin') || $user->hasRole('client'))) {
            $advert = Advert::find($id);

            if($user->id == $advert->user_id) {

                $categories = Category::where('active', '=', 1)->get();
                $data['advert'] = $advert;
                $data['categories'] = $categories;
                $data['cities'] = City::all();
                $data['attributes_sets'] = atribute_set::all();
                $data['attributes'] = $advert->attributeSet->realations;

                return view('adverts.edit', $data);
            }else{
                return 'no permision';
            }
        }else{
            return 'no permision';
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $user = Auth::user();
        if($user && ($user->hasRole('admin') || $user->hasRole('client'))) {
            $advert = Advert::find($id);

            if($user->id == $advert->user_id) {

                $advert->title = $request->title;
                $advert->content = $request->content_text;
                $advert->image = $request->image;
                $advert->price = $request->price;
                $advert->user_id = Auth::user()->id;
                $advert->category_id = $request->category_id;
                $advert->city_id = 1;
                $advert->atribute_set_id = $request->attribute_set;
                $slug = Str::slug($request->title);
                if (Advert::where('slug', $slug)->first()) {  // It exists
                    $lastRecord = Advert::all()->last();
                    $lastRecordId = $lastRecord->id;
                    $advertId = $lastRecordId + 1;
                    $advert->slug = Str::slug($request->title) . "-" . $advertId;
                } else {
                    $advert->slug = Str::slug($request->title);
                }

                //atrributes

                $allKeys = $request->except('_token');
                $attributes = [];
                foreach ($allKeys as $key => $single) {
                    if (strpos($key, 'super_attribute_') == !false) {
                        $attributeName = str_replace('super_attribute_', '', $key);
                        $attributes [$attributeName] = $single;
                    }
                }
                foreach ($attributes as $name => $value) {
                    $attributeObject = atribute::where('name', $name)->first();
                    $oldValue = atribute_values::where('attribute_id', $attributeObject->id)->where('advert_id', $id)->first();
                    if ($oldValue === null) {
                        $newValue = new atribute_values();
                        $newValue->attribute_id = $attributeObject->id;
                        $newValue->advert_id = $id;
                        $newValue->value = $value;
                        $newValue->save();
                    } else {
                        $oldValue->value = $value;
                        $oldValue->save();
                    }
                }

                $advert->save();
                return redirect()->route('advert.edit', $advert->id);
            }else{
            return 'no permission';
            }
        }
    }

    public function advertExpiration(){ //scheduled function
        $adverts= Advert::where('active', 1)->get();
        foreach ($adverts as $advert){
            if($advert->expiration_date <= Carbon::now()){
                $this->destroy($advert->id);
            }
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $advert = Advert::find($id);
        $advert->active = 0;
        $advert->save();
    }
}
