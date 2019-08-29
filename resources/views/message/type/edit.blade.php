@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Edit message type</div>

                    <div class="card-body">
                        <form action="{{route('messagetype.update', $type->id)}}" method="post">
                            @csrf
                            @method('head')
                            <input  type="text" name="type" placeholder="Message Type" class="form-control" value="{{$type->type}}" >
                            <button type="submit" class="btn btn-light">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection