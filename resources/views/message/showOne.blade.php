@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">{{$message->subject}}</div>
                        <p class="ml-3">
                            <br>
                            {{$message->message}}
                        </p>
                    <br>
                        <span class="ml-1 mb-1">
                             {{$message->updated_at->diffForHumans()}}
                        </span>
                </div>
            </div>
        </div>
    </div>
@endsection