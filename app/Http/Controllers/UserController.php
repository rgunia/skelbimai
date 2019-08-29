<?php

namespace App\Http\Controllers;

use App\Advert;
use App\Category;
use App\City;
use App\Profile;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $user = Auth::user();
        if($user && ($user->hasRole('admin') || $user->hasRole('client'))) {
            $data['user'] = User::where('id', $user->id)->first();
            $data['profile'] = Profile::where('user_id', $user->id)->first();
            $data['adverts'] = Advert::where('user_id', $user->id)->get();
//            dd($data);
            return view('user.profile', $data);
        }else{
            return 'no permission';
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $profile= new Profile();
        $profile->phone = $request->phone;
        $profile->age = $request->age;
        $profile->about = $request->about;
        $profile->user_id = Auth::user()->id;
        $profile->city_id = $request->city_id;
        $profile->slug = Str::slug(Auth::user()->name);
        $profile->active = 1;
        $profile->save();

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
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
        $data['user'] = User::where('id', $user->id)->first();
        $data['cities'] = City::all();
        $data['profile'] = Profile::where('id', $user->id)->first();
        return view('user.edit', $data);
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
        $profile = Profile::where('user_id', Auth::user()->id)->get();
        $profile->phone = $request->phone;
        $profile->age = $request->age;
        $profile->about = $request->about;
        $profile->user_id = Auth::user()->id;
        $profile->city_id = $request->city_id;
        $profile->slug = Str::slug(Auth::user()->name);
        $profile->active = 1;
        $profile->save();
    }

    public function storeImage(Request $request)
    {
        if($request->file) {

            $profile = Profile::where('user_id', Auth::user()->id)->first();
            $file = $request->file;
            $profile->image = $file->getClientOriginalName();
            $profile->save();

            $file->move(public_path('images'), $file->getClientOriginalName());
        }
        else{
            echo 'no photo selected';
        }
        return redirect()->route('user.index');

    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
