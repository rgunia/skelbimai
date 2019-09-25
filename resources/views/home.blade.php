@extends('layouts.app')
<?php use Carbon\Carbon; ?>
@section('content')



    <div class="d-flex justify-content-around">

        <div class="container">

            <!-- Page Heading -->
            <h1 class="my-4">Naujausi Skelbimai
            </h1>

            <hr class="border-info">


{{--            bootstrap--}}

            <div class="container ">
                <div class="row ">

            @foreach($adverts as $advert)

                    <div class="col-xs-12 col-sm-4 mt-3">
                        <div class="card">
                            <a class="img-card" href="{{route('advert.show', $advert->slug)}}">
                                <img src="{{$advert->image}}">
                            </a>
                            <br />
                            <div class="card-content p-0 text-center">
                                <h4 class="card-title">
                                    <a style="font-size: 15px" href="{{route('advert.show', $advert->slug)}}">

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
                                    <br>
                                        Last Update: {{$advert->updated_at->diffForHumans()}}
                                </div>
                            </div>
                            <div class="card-read-more">
                                <a class="btn btn-link btn-block" href="{{route('advert.show', $advert->slug)}}">
                                    {{$advert->price}}€
                                </a>
                            </div>
                        </div>
                    </div>

            @endforeach
                </div>
            </div>
{{--            bootstrap--}}
        </div>
        <div class="commertial rounded mr-3">
            C<br>O<br>M<br>M<br>E<br>R<br>T<br>I<br>A<br>L<br>
        </div>
    </div>



@endsection
