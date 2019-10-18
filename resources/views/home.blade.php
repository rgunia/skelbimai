@extends('layouts.app')
<?php use Carbon\Carbon; ?>
@section('content')



    <div class="d-flex justify-content-around">

        <div class="container">
{{--           place for commmertial--}}
            <!-- Page Heading -->
            <h1 class="my-4">Naujausi Skelbimai
            </h1>

            <hr class="border-info">


{{--            bootstrap--}}

            <div class="container ">
                <div class="row ">

            @foreach($adverts->reverse() as $advert)

                    <div class="car-card col-xs-12 col-sm-4 mt-3">
                        <div class="card">
                            <a class="img-card" style="position: relative; text-align: center; color: white;" href="{{route('advert.show', $advert->slug)}}">
                                <img src="{{$advert->image}}">
                                <div style="font-size: 20px; position: absolute; bottom: 8px; left: 16px; text-shadow: 2px 1px 2px rgba(0,0,0,0.4), 0px -5px 35px rgba(255,255,255,0.3);"><b>{{$advert->price}}€</b></div>
                            </a>
                            <div class="card-content">
                                <h4 class="card-title">
                                    <a style="font-size: 15px; color: #2CB2BC;" href="{{route('advert.show', $advert->slug)}}">

                                        @foreach($advert->attributeValues as $value)

                                           @if($value->attribute_id == 33 || $value->attribute_id == 34)
                                               {{$value->value}}
                                           @elseif($value->attribute_id == 35)
                                                {{$value->value}}m.
                                            @endif

                                        @endforeach

                                    </a>
                                </h4>
                                <div class="" >

                                    @foreach($advert->attributeValues as $value)

                                        @if($value->attribute_id == 37 || $value->attribute_id == 38)
                                            {{$value->value}},
                                        @elseif($value->attribute_id == 39)
                                            {{$value->value}}.
                                        @endif

                                    @endforeach

                                        Last Update: {{$advert->updated_at->diffForHumans()}}
                                </div>
                            </div>
                        </div>
                    </div>

            @endforeach
                </div>
            </div>
{{--            bootstrap--}}
        </div>
{{--      place for commertial--}}
    </div>



@endsection
