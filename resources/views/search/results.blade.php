@extends('layouts.app')
<?php use Carbon\Carbon; ?>
@section('content')
    <div class="container">

        <!-- Page Heading -->
        <h1 class="my-4">Naujausi Skelbimai
        </h1>

        @foreach($adverts as $advert)
            <div class="row">
                <div class="col-md-7">
                    <a href="#">
                        <img class="img-fluid rounded mb-3 mb-md-0" src="{{$advert->image}}" alt="">
                    </a>
                </div>
                <div class="col-md-5">
                    <h3>{{$advert->title}}</h3>
                    <p>{{$advert->content}}</p>
                    <h5>{{$advert->price}}€ </h5>
                    <h5>{{$advert->created_at->diffForHumans()}}</h5>
                    <a class="btn btn-primary" href="{{route('advert.show', $advert->slug)}}">View Advert</a>
                </div>
            </div>


            <hr>
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