<?php

namespace App\Http\Controllers;

use App\Advert;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use Illuminate\View\View;

class SearchController extends Controller
{
    public function search(){
        $keyword=  Input::get('search');
        $adverts = Advert::where('active', 1)->where('title', 'LIKE', "%{$keyword}%")
            ->orWhere('content', 'LIKE', "%{$keyword}%")
            ->get();
        $data['adverts'] = $adverts;
        return view('search.results', $data);
    }
}
