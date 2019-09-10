@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Create Attribute</div>
                    <div class="card-body">
                        <form action="{{route('attribute.store')}}" method="post">
                            @csrf
                            <input  type="text" name="attribute" placeholder="Attribute" class="form-control" >
                            <select name="type" class="form-control" id="type">
                                <option>Type</option>
                                @foreach($types as $type)
                                    <option value="{{$type->id}}">{{$type->name}}</option>
                                @endforeach
                            </select>
                            <button type="submit" class="btn btn-light">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection