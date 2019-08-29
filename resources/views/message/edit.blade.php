@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Message</div>

                    <div class="card-body">
                        <form action="{{route('message.update', $message->id)}}" method="post">
                            @csrf
                            <input  type="text" name="subject" placeholder="Subject" class="form-control mb-2 mt-2" value="{{$message->subject}}" >
                            <textarea class="form-control mb-2 mt-2" name="message" placeholder="Message">{{$message->message}}</textarea>

                            <select name="r_id" class="form-control mb-2 mt-2">
                                <option >Recipient</option>
                                <option value="all" >All</option>
                                @foreach($users as $user)
                                    <option value="{{$user->id}}" @if($message->r_id == $user->id) selected @endif>{{$user->email}}</option>
                                @endforeach
                            </select>

                            <select name="type" class="form-control mb-2 mt-2">
                                <option >Message Type</option>
                                @foreach($types as $type)
                                    <option value="{{$type->id}}" @if($message->type == $type->id) selected @endif>{{$type->type}}</option>
                                @endforeach
                            </select>

                            <select name="state" class="form-control mb-2 mt-2">
                                <option value="1" @if($message->state == 1) selected @endif>Send</option>
                                <option value="0" @if($message->state == 0) selected @endif>Draft</option>
                            </select>


                            <button type="Edit" class="btn btn-light">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection