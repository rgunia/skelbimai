@extends('layouts.app')
<?php use Carbon\Carbon; ?>
@section('content')
    <div class="container">
        <div>
            <h1> Admin Panel </h1>

            <a class="btn btn-secondary" href="{{ route('city.index') }}">
                City
            </a>
            <a class="btn btn-secondary" href="{{ route('category.index') }}">
                Category
            </a>

        </div>

    </div>
@endsection