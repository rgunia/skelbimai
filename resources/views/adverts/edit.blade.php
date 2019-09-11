@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Skelbimai</div>

                    <div class="card-body">
                        <form action="{{route('advert.update', $advert->id)}}" method="post">
                            @csrf
                            @method('PUT')
                            <input  type="text" name="title" placeholder="Pavadinimas" class="form-control mb-2 mt-2" value="{{$advert->title}}" >
                            <textarea class="form-control mb-2 mt-2" name="content_text" placeholder="Skelbimo turinys">{{$advert->content}}</textarea>
                            <input  type="text" name="image" placeholder="Nuotrauka" class="form-control mb-2 mt-2" value="{{$advert->image}}" >
                            <input  type="number" name="price" placeholder="Kaina" class="form-control mb-2 mt-2" value="{{$advert->price}}" >
                            <select name="category_id" class="form-control mb-2 mt-2">
                                <option >Pasirinkti kategorija</option>
                                @foreach($categories->where('parent_id', 0) as $category)
                                    <option value="{{$category->id}} " class="font-weight-bold" @if($category->id == $advert->category_id) selected @endif>{{$category->title}}</option>
                                    @foreach($category->subCategory as $sub)
                                        <option value="{{$sub->id}}" @if($sub->id == $advert->category_id) selected @endif>{{$sub->title}}</option>
                                    @endforeach
                                @endforeach
                            </select>
                            <select name="city_id" class="form-control mb-2 mt-2">
                                <option >Miestas</option>
                                @foreach($cities as $city)
                                    <option value="{{$city->id}}" @if($city->id == $advert->city_id) selected @endif>{{$city->name}}</option>
                                @endforeach
                            </select>

                            <hr>

                            <select name="attribute_set" class="form-control mb-2 mt-2">
                                <option></option>Attribute</option>
                                @foreach($attributes_sets as $attribute_set)
                                    <option value="{{$attribute_set->id}}" @if($attribute_set->id == $advert->atribute_set_id) selected @endif>{{$attribute_set->name}}</option>
                                @endforeach
                            </select>

                                @foreach($attributes as $attribute)
                                    <input type="{{$attribute->attributes->type->name}}" name="super_attribute_{{$attribute->attributes->name}}" placeholder="{{$attribute->attributes->lable}}">
                                @endforeach

                            <hr>

                            <button type="submit" class="btn btn-light">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection