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

                            <select name="category_id" class="form-control mb-2 mt-2">
                                <option >Kategorija</option>
                                @foreach($categories->where('parent_id', 0) as $category)
                                    <option value="{{$category->id}} " class="font-weight-bold" @if($category->id == $attributeSet->category_id) selected @endif>{{$category->title}}</option>
                                    @foreach($category->subCategory as $sub)
                                        <option value="{{$sub->id}}" @if($sub->id == $attributeSet->category_id) selected @endif>{{$sub->title}}</option>
                                    @endforeach
                                @endforeach
                            </select>

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