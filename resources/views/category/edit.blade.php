@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Skelbimai</div>

                    <div class="card-body">
                        <form action="{{route('category.update', $category->id)}}" method="post">
                            @csrf
                            @method('put')
                            <input  type="text" name="title" placeholder="Pavadinimas" class="form-control" value="{{$category->title}}" >
                            <select name="parent_id">
                                <option value="0">-----</option>

                                @foreach($categories->where('parent_id', 0) as $cat)
                                    <option value="{{$cat->id}} " class="font-weight-bold" @if($category->parent_id == $cat->id) selected @endif>{{$cat->title}}</option>

                                    @foreach($cat->subCategory as $sub)
                                        <option value="{{$sub->id}}" @if($category->parent_id == $sub->id) selected @endif>{{$sub->title}}</option>
                                    @endforeach

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