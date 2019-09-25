@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">{{$category->title}}</div>

                    <div class="card-body">
                        <form action="{{route('advert.store')}}" method="post">
                            @csrf
                            <input  type="hidden" name="category_id" value="{{$category->id}}" >
                            <input  type="text" name="title" placeholder="Pavadinimas" class="form-control mb-2 mt-2" >
                            <textarea class="form-control mb-2 mt-2" name="content_text" placeholder="Skelbimo turinys"></textarea>
                            <input  type="text" name="image" placeholder="Nuotrauka" class="form-control mb-2 mt-2" >
                            <input  type="number" name="price" placeholder="Kaina" class="form-control mb-2 mt-2" >

                            <select name="city_id" class="form-control mb-2 mt-2">
                                <option >Miestas</option>
                                @foreach($cities as $city)
                                    <option value="{{$city->id}}">{{$city->name}}</option>
                                @endforeach
                            </select>

                            <hr>


                                @if(!empty($attributes))
                            @foreach($attributes as $attribute)

                                     @if($attribute->attributes->type->name != 'select')
                                        <input type="{{$attribute->attributes->type->name}}" @if($attribute->attributes->type->name == 'checkbox')
                                        class="d-inline mb-2" @else class="form-control mb-2 mt-2" @endif
                                         name="super_attribute_{{$attribute->attributes->name}}"
                                               @if($attribute->attributes->type->name == 'checkbox')value="1" @endif
                                               placeholder="{{$attribute->attributes->lable}}">
                                    @endif

                                         @if($attribute->attributes->type->name == 'checkbox')
                                             <label>{{$attribute->attributes->lable}}</label>
                                         @endif

                                    @if($attribute->attributes->type->name == 'select')

                                        <div class="{{$attribute->attributes->name}}-wrapper">
                                        <select id="{{$attribute->attributes->name}}" name="super_attribute_{{$attribute->attributes->name}}" class="form-control mb-2 mt-2">
                                           @if($attribute->attributes->id == 33)
                                                <option>{{$attribute->attributes->lable}}</option>
                                                @foreach($attribute->attributes->carMake as $make)
                                                    <option value="{{$make->id}}">{{$make->lable}}</option>
                                                @endforeach
                                            @elseif($attribute->attributes->id == 34)
                                                <option>{{$attribute->attributes->lable}}</option>
                                                @foreach($attribute->attributes->data as $data)
                                                    <option value="{{$data->id}}">{{$data->data}}</option>
                                                @endforeach
                                            @elseif(!empty($attribute->attributes->data))
                                                <option>{{$attribute->attributes->lable}}</option>
                                                @foreach($attribute->attributes->data as $data)
                                                    <option value="{{$data->data}}">{{$data->data}}</option>
                                                @endforeach
                                            @endif
                                        </select>
                                        </div>
                                    @endif

                            @endforeach
                            @endif
                            <hr>

                            <button type="submit" class="btn btn-light">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="http://code.jquery.com/jquery-3.3.1.min.js"
            integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
            crossorigin="anonymous">
    </script>
    <script>
        jQuery(document).ready(function(){
            jQuery('#mark').change(function(e){
                e.preventDefault();

                jQuery.ajax({
                    url: "{{ route('ajax.carmodelresponse') }}",
                    method: 'post',
                    data: {markID: jQuery('#mark').val(), _token: '{{csrf_token()}}'},
                    success: function (response) {
                        jQuery('.model-wrapper').html(response);
                    },
                });
            });
        });

    </script>
@endsection