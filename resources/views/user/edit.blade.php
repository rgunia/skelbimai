@extends('layouts.app')

@section('content')
    <div class="container">
        <form action="@if(isset($profile->user_id)){{route('user.update', $user->id)}}@else{{route('user.store', $user->id)}}@endif" method="post">
            @csrf
            @if(isset($profile->user_id))@method('PUT')@endif
            <div class="form-group">
                <label for="email">Email address</label>
                <input type="email" class="form-control" name="email" id="email" placeholder="example@example.com" value="{{$user->email}}">
            </div>
            <div class="form-group">
                <label for="phone">Phone Number</label>
                <input type="tel" class="form-control bfh-phone" name="phone" value="+370" id="phone" pattern="[6-5]{1}-[0-9]{3}-[0-9]{4}">
            </div>
            <div class="form-group">
                <label for="city">City</label>
                <select name="city_id" class="form-control" id="city">
                        @foreach($cities as $city)
                            <option value="{{$city->id}}">{{$city->name}}</option>
                        @endforeach
                </select>
            </div>
            <div class="form-group">
                <label for="age">Age</label>
                <input type="number" class="form-control" name="age" id="age" size="2">
            </div>
            <div class="form-group">
                <label for="about">About You</label>
                <textarea class="form-control" id="about" name="about" rows="3"></textarea>
            </div>
            <div>
                <button type="submit" class="btn btn-light">Submit</button>
            </div>
        </form>
    </div>
@endsection