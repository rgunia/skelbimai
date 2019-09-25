@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Skelbimai</div>

                    <div class="card-body">
                        <form action="{{route('advert.createsteptwo')}}" method="post">
                            @csrf
                            <select name="category_id" class="form-control mb-2 mt-2">
                                <option >Kategorija</option>
                                @foreach($categories->where('parent_id', 0) as $category)
                                    <option value="{{$category->id}} " class="font-weight-bold">{{$category->title}}</option>
                                    @foreach($category->subCategory as $sub)
                                        <option value="{{$sub->id}}">{{$sub->title}}</option>
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