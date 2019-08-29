<?php

namespace App\Http\Controllers;

use App\Advert;
use App\Category;
use App\City;
use App\Comments;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;

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
            return 'no permission';
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
        $advert = new Advert();
        $advert->title = $request->title;
        $advert->content = $request->content_text;
        $advert->image = $request->image;
        $advert->price = $request->price;
        $advert->user_id = Auth::user()->id;
        $advert->category_id = $request->category_id;
        $advert->city_id = $request->city_id;
        $slug = Str::slug($request->title);
        if (Advert::where('slug', $slug)->first()){
            $lastRecord = Advert::all()->last();
            $lastRecordId = $lastRecord->id;
            $advertId= $lastRecordId + 1;
            $advert->slug = Str::slug($request->title)."-".$advertId;
        }  // It exists
        else{
            $advert->slug = Str::slug($request->title);
        }

        $advert->save();
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
            $categories = Category::where('active', '=', 1)->get();
            $data['advert'] = $advert;
            $data['categories'] = $categories;
            $data['cities'] = City::all();
            return view('adverts.edit', $data);
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
        $advert = Advert::find($id);
        $advert->title = $request->title;
        $advert->content = $request->content_text;
        $advert->image = $request->image;
        $advert->price = $request->price;
        $advert->user_id = Auth::user()->id;
        $advert->category_id = $request->category_id;
        $advert->city_id = 1;
        $slug = Str::slug($request->title);
        if (Advert::where('slug', $slug)->first()){  // It exists
            $lastRecord = Advert::all()->last();
            $lastRecordId = $lastRecord->id;
            $advertId= $lastRecordId + 1;
            $advert->slug = Str::slug($request->title)."-".$advertId;
        }
        else{
            $advert->slug = Str::slug($request->title);
        }

        $advert->save();
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
        $advert->active = 1;
        $advert->save();
    }
}
