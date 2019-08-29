<?php

namespace App\Http\Controllers;

use App\Message;
use App\MessageType;
use App\User;
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
        $data['message'] = $message;
        return view('message.showOne', $data);
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
