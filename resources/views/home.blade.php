@extends('layouts.app')
<?php use Carbon\Carbon; ?>
@section('content')
    <div class="container">

        <!-- Page Heading -->
        <h1 class="my-4">Naujausi Skelbimai
        </h1>

        @foreach($adverts as $advert)
        <div class="row">
            <div class="col-md-4">
                <a href="#">
                    <img class="img-fluid rounded mb-3 mb-md-0 w-75" src="{{$advert->image}}" alt="">
                </a>
            </div>
            <div class="col-md-6">
                <h3>{{$advert->title}}</h3>
                <div id="module" class="container">
                    <p class="collapse" id="collapse{{$advert->id}}" aria-expanded="false">
                        {{$advert->content}}
                    </p>
                    <a role="button" class="collapsed" data-toggle="collapse" href="#collapse{{$advert->id}}" aria-expanded="false" aria-controls="collapseExample"></a>
                </div>
                <h5>{{$advert->price}}€ </h5>
                <h5>Last Update: {{$advert->updated_at->diffForHumans()}}</h5>
                <a class="btn btn-primary" href="{{route('advert.show', $advert->slug)}}">View Advert</a>
            </div>
        </div>


        <hr>


            <style>

                #module a.collapsed:after {
                    content: '+ Show More';
                }

                #module a:not(.collapsed):after {
                    content: '- Show Less';
                }

                #module #collapse{{$advert->id}}.collapse:not(.show) {
                    display: block;
                    /* height = lineheight * no of lines to display */
                    height: 1.5em;
                    overflow: hidden;
                }

                #module #collapse{{$advert->id}}.collapsing {
                    height: 1.5em;
                }
            </style>


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


@endsection
