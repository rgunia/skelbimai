@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Edit Attribute Set</div>

                    <div class="card-body">
                        <a href="{{route('attribute.create')}}"  class="btn btn-primary btn-lg btn-block">Add new Attribute</a>
                        <form action="{{route('attributeset.update', $attributeSet->id)}}" method="post">
                            @csrf
                            <input  type="text" name="set" placeholder="Attribute Set" class="form-control" value="{{$attributeSet->name}}" >
                            @foreach($attributes as $attribute)
                                <input type="checkbox" name="attributes[]" @foreach($oldAttributes as $oldAttribute) @if($oldAttribute->id == $attribute->id) checked @endif @endforeach value="{{$attribute->id}}"> {{$attribute->name}}<br>
                            @endforeach
                            <button type="submit" class="btn btn-light">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection