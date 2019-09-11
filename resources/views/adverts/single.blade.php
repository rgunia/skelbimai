@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-11">
                <div class="card">
                    <div class="card-header">{{$advert->category->title}}</div>
                    <div class="card-body">
                        @if($advert->user_id == Auth::user()->id)
                        <a href="{{route('advert.edit', $advert->id)}}"  class="btn btn-primary btn-lg btn-block mb-2"> Edit Advert </a>
                        @endif
                        <img src="{{$advert->image}}" class="rounded mx-auto d-block mh-100 mw-100" alt="image">
                        <div class="d-flex bd-highlight card-header">
                            <div class="p-2 w-100 bd-highlight">
                                <div class="h4">
                                    {{$advert->title}}
                                </div>
                                <div class="h6">
                                    {{$advert->city->name}}
                                </div>
                            </div>
                            <div class="p-2 flex-shrink-1 bd-highlight h1 text-info">{{$advert->price}}€</div>
                        </div>
                        <p class="card-body h5">
                            {{$advert->content}}
                        </p>
                    </div>
                </div>


                    <div class="card-body  mt-2">
                        <div class="card-header">Comments</div>
                        <div class="card-body">
                            @role('admin')
                          <form class="d-flex bd-highlight" action="{{route('comment.store')}}" method="post">
                                @csrf
                              <textarea name="comment" class="form-control" type="text" placeholder="Enter your Comment"></textarea>
                              <input name="advert_id" type="hidden" value="{{$advert->id}}">
                              <button type="submit" class="btn btn-light">Comment</button>
                          </form>
                            @endrole
                        </div>
                        <div class="card-body mt-1">
                            @foreach($comments as $comment)
                            <div class="card-header">{{$comment->user->name}}

                                @hasanyrole('client|admin')
                                <form class="d-flex bd-highlight" action="{{route('comment.destroy',  $comment->id)}}" method="post">
                                    @csrf
                                    @method('DELETE')
                                    <button type="submit" class="btn btn-light">Delete Comment</button>
                                </form>
                                @endhasanyrole

                            </div>
                                <div class="card-body">
                                    {{$comment->comment}}
                                </div>
                            @endforeach
                            </div>
                        </div>
                </div>
            </div>
        </div>
    </div>
@endsection