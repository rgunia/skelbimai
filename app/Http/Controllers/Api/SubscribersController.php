<?php

namespace App\Http\Controllers\Api;

use App\Http\Resources\Subscriberts;
use App\Subscriber;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class SubscribersController extends Controller
{
    public function index()
    {
        $subscribers = Subscriber::all();
        return Subscriberts::collection($subscribers);
    }
    public function create(Request $request)
    {
        $subscriber = new Subscriber();
        $subscriber->name = $request->name;
        $subscriber->email = $request->email;
        $subscriber->save();
    }
    public function delete($id){
        Subscriber::destroy($id);
    }
}
