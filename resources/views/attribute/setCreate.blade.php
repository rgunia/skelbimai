@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Create Attribute Set</div>

                    <div class="card-body">
                        <a href="{{route('attribute.create')}}"  class="btn btn-primary btn-lg btn-block">Add new Attribute</a>
                        <form action="{{route('attributeset.store')}}" method="post">
                            @csrf
                            <input  type="text" name="set" placeholder="Attribute Set" class="form-control" >
                            @foreach($attributes as $attribute)
                                <input type="checkbox" name="attributes[]" value="{{$attribute->id}}"> {{$attribute->name}}<br>
                            @endforeach
                            <button type="submit" class="btn btn-light">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection