@extends('layouts.app')
<?php use Carbon\Carbon; ?>
@section('content')

    <div class="d-flex justify-content-around">

        <div class="container">

            <!-- Page Heading -->
            <h1 class="my-4">Naujausi Skelbimai
            </h1>

            @foreach($adverts as $advert)
                <div class="row mb-3 rounded border border-info pt-2 pb-2 bg-white">
                    <div class="col-md-4">
                        <a href="#">
                            <img class="img-fluid rounded mb-3 mb-md-0 mw-100" style="height: 200px;" src="{{$advert->image}}" alt="">
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
                        <h5>{{$advert->created_at->diffForHumans()}}</h5>
                        <a class="btn btn-primary" href="{{route('advert.show', $advert->slug)}}">View Advert</a>
                    </div>
                </div>



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

        <div class="commertial rounded mr-3">
            C<br>O<br>M<br>M<br>E<br>R<br>T<br>I<br>A<br>L<br>
        </div>
    </div>
@endsection