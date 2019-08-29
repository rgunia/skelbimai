<?php

namespace App\Http\Controllers;

use App\MessageType;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class MessageTypeController extends Controller
{
    public function index()
    {
        $user = Auth::user();
        if($user && ($user->hasRole('admin'))) {

            $data['types']= MessageType::all();
            return view('message.type.all', $data);
        }else{
            return 'no permission';
        }
    }
    public function create()
    {
        return view('message.type.create');
    }
    public function store(Request $request)
    {
        $type = new MessageType();
        $type->type = $request->type;
        $type->save();
    }
    public function edit($id)
    {
        $data['type'] = MessageType::find($id);
        return view('message.type.edit', $data);
    }
    public function update(Request $request, $id)
    {
        $type = MessageType::find($id);
        $type->type = $request->type;
        $type->save();
    }
    public function destroy($id)
    {
        //
    }
}
