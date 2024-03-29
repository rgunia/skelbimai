@extends('layouts.app')
<?php use Carbon\Carbon; ?>
@section('content')


{{--{{dd($adverts)}}--}}
    <div class="d-flex justify-content-around">

        <div class="container">

            <!-- Page Heading -->
            <h1 class="my-3">Skelbimai pagal paieška
            </h1>
            @foreach($adverts as $advert)
            <div class="container py-2">

                <div class="row">
                    <div class="col-lg-10 mx-auto">

                        <!-- List group-->
                        <ul class="list-group shadow">

                            <!-- list group item-->
                            <li class="list-group-item blackBackroung" style="height: 200px; position: relative;">
                                <!-- Custom content-->
                                <div class="media align-items-lg-center flex-column flex-lg-row blackBackroung" style="position: absolute; width: 95%; top: 50%; left: 50%; transform: translate(-50%,-50%);">
                                    <div class="media-body order-2 order-lg-1">
                                        <h5 class="mt-0 font-weight-bold mb-2" style="color: #2CB2BC; text-shadow: 0px -5px 35px rgba(255,255,255,0.3);">

                                            @foreach($advert->attributeValues as $value)

                                                @if($value->attribute_id == 33 || $value->attribute_id == 34)
                                                    {{$value->value}}
                                                @elseif($value->attribute_id == 35)
                                                    {{$value->value}}m.
                                                @endif

                                            @endforeach

                                        </h5>
                                        <p class="font-italic text-muted mb-0 small">
                                            @foreach($advert->attributeValues as $value)

                                                @if($value->attribute_id == 37 || $value->attribute_id == 38)
                                                    {{$value->value}},
                                                @elseif($value->attribute_id == 39)
                                                    {{$value->value}}.
                                                @endif

                                            @endforeach

                                            Last Update: {{$advert->updated_at->diffForHumans()}}
                                        </p>
                                        <div class="d-flex align-items-center justify-content-between mt-1">
                                            <h6 class="font-weight-bold my-2" >{{$advert->price}}€</h6>
                                        </div>
                                    </div><img src="{{$advert->image}}" style="max-height: 180px;" alt="" width="200" class="ml-lg-5 order-1 order-lg-2">
                                </div>
                                <!-- End -->
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            @endforeach


        <!-- Pagination -->
            <ul class="pagination justify-content-center">
                <li class="page-item">
                    <a class="page-link" href="#" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                        <span class="sr-only">Previous</span>
                    </a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="#">1</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="#">2</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="#">3</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="#" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                        <span class="sr-only">Next</span>
                    </a>
                </li>
            </ul>

        </div>

        <div class="commertial rounded mr-3">
        </div>
    </div>
@endsection