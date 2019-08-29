@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Message Type Creator</div>

                    <div class="card-body">
                        <form action="{{route('messagetype.store')}}" method="post">
                            @csrf
                            @method('post')
                            <input  type="text" name="type" placeholder="Message Type" class="form-control" >
                            <button type="submit" class="btn btn-light">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection