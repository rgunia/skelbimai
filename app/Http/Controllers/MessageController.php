<?php

namespace App\Http\Controllers;

use App\Advert;
use App\Message;
use App\MessageType;
use App\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class MessageController extends Controller
{

    public function showClient(){
        $clientId = Auth::user()->id;
        $messages = Message::where('state', '1')->where('r_id', $clientId)->get();
        $data['messages'] = $messages;
        return view('message.showAll', $data);
    }
    public function showOne($id){
        $message = Message::where('id', $id)->first();
        if($message->status == 0){
            $message->status = 1;
            $message->seen = Carbon::now();
            $message->save();
        }
        $data['message'] = $message;
        return view('message.showOne', $data);
    }
    public function advertExpirationMessage(){ //scheduled function
        $adverts= Advert::where('active', 1)->get();
        foreach ($adverts as $advert){
            $expDate = $advert->expiration_date;
            $messageText = '';

            if ($expDate == Carbon::now()->subDay()->toDateString()) {
                $messageText = 'Hello, Your Advert:'.'"'.$advert->title.'"'.' will expire after a Day ('.$expDate.')!';
            }elseif($expDate == Carbon::now()->subWeek()->toDateString()) {
                $messageText = 'Hello, Your Advert:'.'"'.$advert->title.'"'.' will expire after a Week ('.$expDate.')!';
            }
            $message = new Message;
            $message->r_id = $advert->user_id;
            $message->subject = 'Your Advert will expire soon!';
            $message->message =  $messageText;
            $message->sender_id = 1;
            $message->type = 1;
            $message->status = 0;
            $message->state = 1;
            $message->save();
        }
    }


    public function showSendsAdmin(){
        $messages = Message::where('state', '1')->get();
        $data['messages'] = $messages;
        return view('Admin.showSends', $data);
    }
    public function showDraftsAdmin(){
        $messages = Message::where('state', '0')->get();
        $data['messages'] = $messages;
        return view('Admin.showDrafts', $data);
    }

    public function create(){
        {
            $user = Auth::user();
            if($user && ($user->hasRole('admin'))) {

                $data['users'] = User::all();
                $data['types'] = MessageType::all();
                return view('message.create', $data);
            }else{
                return 'no permission';
            }
        }
    }
    public function store(Request $request){
        if($request->r_id == 'all'){

        }else{
            $message = new Message;
            $message->r_id = $request->r_id;
            $message->subject = $request->subject;
            $message->message = $request->message;
            $message->sender_id = Auth::user()->id;
            $message->type = $request->type;
            $message->status = 0;
            $message->state = $request->state;
            $message->save();
        }
    }
    public function edit($id){
        {
            $user = Auth::user();
            if($user && ($user->hasRole('admin'))) {
                $data['message'] = Message::where('id', $id)->first();
                $data['users'] = User::all();
                $data['types'] = MessageType::all();
                return view('message.edit', $data);
            }else{
                return 'no permission';
            }
        }
    }
    public function update(Request $request, $id){
        if($request->r_id == 'all'){

        }else{
            $message = Message::where('id', $id)->first();
            $message->r_id = $request->r_id;
            $message->subject = $request->subject;
            $message->message = $request->message;
            $message->sender_id = Auth::user()->id;
            $message->type = $request->type;
            $message->status = 0;
            $message->state = $request->state;
            $message->save();
        }
    }
    public function destroy(){

    }
}
