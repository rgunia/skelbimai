@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="container">

            <!-- Portfolio Item Heading -->
            <h1 class="my-4">HI, {{$user->name}}!
                <small>@role('admin') Admin @endrole</small>
            </h1>

            <!-- Portfolio Item Row -->
            <div class="row">

                <div class="col-md-8">
                    <img class="img-fluid" src="http://194.5.157.99/laravel/projectlaravel/public/images/{{$profile->image}}" alt="">
                </div>

                <div class="col-md-4">
                    <h3 class="my-3">About Me:</h3>
                    <p>
                        {{$profile->about}}
                    </p>
                    <h3 class="my-3">Details</h3>
                    <div>Name: {{$user->name}}</div>
                    <div>Email: {{$user->email}}</div>
                    <div>Phone: {{$profile->phone}}</div>
                    <div>City: {{$profile->city->name}}</div>
                    <div>Age: {{$profile->age}}</div>
                    <div>Status: {{$profile->status}}</div>

                    <br>

                    <form class="d-inline" action="{{route('user.edit', $user->id)}}"><button type="submit" class="d-inline btn btn-primary btn-sm">Edit</button> </form>
                    <form class="d-inline" action="{{route('user.destroy', $user->id)}}"> @method('DELETE') <button type="submit" class="d-inline btn btn-primary btn-sm">Delete</button> </form>


                    <form action="{{route('profile.storeImage')}}" method="post" enctype="multipart/form-data" class="mt-3">
                            <label>Select Profile picture:</label>
                            @csrf
                            <input type="file" name="file" id="file">
                            <input type="submit" value="Upload" name="submit">
                        </form>
                    </h4>

                </div>



            </div>
            <!-- /.row -->

            <!-- Related Projects Row -->
            <h3 class="my-4">Related Projects</h3>

            <div class="row">
                @foreach($adverts as $advert)
                <div class="col-md-3 col-sm-6 mb-4">
                    <a href="{{route('advert.show', $advert->slug)}}">
                        <img class="img-fluid" src="{{$advert->image}}" alt="">
                    </a>
                </div>
                    @endforeach

            </div>
            <!-- /.row -->

        </div>
    </div>
@endsection