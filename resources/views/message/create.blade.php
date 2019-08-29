@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Message</div>

                    <div class="card-body">
                        <form action="{{route('message.store')}}" method="post">
                            @csrf
                            <input  type="text" name="subject" placeholder="Subject" class="form-control mb-2 mt-2" >
                            <textarea class="form-control mb-2 mt-2" name="message" placeholder="Message"></textarea>

                            <select name="r_id" class="form-control mb-2 mt-2">
                                <option >Recipient</option>
                                    <option value="all">All</option>
                                @foreach($users as $user)
                                    <option value="{{$user->id}}">{{$user->email}}</option>
                                @endforeach
                            </select>

                            <select name="type" class="form-control mb-2 mt-2">
                                <option >Message Type</option>
                                @foreach($types as $type)
                                    <option value="{{$type->id}}">{{$type->type}}</option>
                                @endforeach
                            </select>

                            <select name="state" class="form-control mb-2 mt-2">
                                <option value="1">Send</option>
                                <option value="0">Draft</option>
                            </select>


                            <button type="submit" class="btn btn-light">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection