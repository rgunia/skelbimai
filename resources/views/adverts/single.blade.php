@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-11 d-flex bd-highlight">

{{--                visi trys--}}
                <div class="card">

{{--                    du--}}
                    <div >
{{--                        per du--}}
                        <div class="card-header h5" style="color: #2CB2BC;">
                            @if($advert->category->id == 100 || $advert->category->id == 101)
                                @foreach($attributesValue as $attributeValue)
                                     @if($attributeValue->attribute_id == 33)
                                     {{$attributeValue->value}}
                                    @endif
                                         @if($attributeValue->attribute_id == 34)
                                             {{$attributeValue->value}}
                                         @endif
                                         @if($attributeValue->attribute_id == 35)
                                             {{$attributeValue->value}}m
                                         @endif
                                         @if($attributeValue->attribute_id == 37)
                                             {{$attributeValue->value}}
                                         @endif
                                         @if($attributeValue->attribute_id == 38)
                                             {{$attributeValue->value}}
                                         @endif
                                @endforeach

                             @endif

                        </div>
                        @if($advert->user_id == Auth::user()->id)
                            <a href="{{route('advert.edit', $advert->id)}}"  class="btn btn-primary btn-lg btn-block mb-2"> Edit Advert </a>
                        @endif

                        <div class="d-flex bd-highlight pb-3">

                            {{--attributes pirmas--}}

                            <div class="container rounded mt-1">
                                <hr class="bg-white">
                                <div class="d-block d-flex bd-highlight h4 text-info ">
                                    <div class="p-2 flex-fill bd-highlight blue-text" style="color: white;">Kaina:</div>
                                    <div class="p-2 flex-fill bd-highlight">{{$advert->price}}€</div>
                                </div>
                                <hr class="bg-white">


                                <div class="d-flex bd-highlight">
{{--                                lable--}}
                                <div class="w-100" >
                                @foreach($attributesValue as $attributeValue)
                                        @if($attributeValue->attribute_id == 35 || $attributeValue->attribute_id == 36)
                                             <div class="d-inline">
                                        @else
                                             <div class="d-block">
                                        @endif
                                            @if($attributeValue->attributeOfValue->type_id == 5 && $attributeValue->value == 1)
                                            @elseif($attributeValue->attribute_id == 35)
                                            {{$attributeValue->attributeOfValue->lable}}:
                                            @elseif($attributeValue->attribute_id == 36)
                                            @elseif($attributeValue->attribute_id == 41)
                                                Variklis:
                                            @else
                                                {{$attributeValue->attributeOfValue->lable}}:
                                            @endif
                                            </div>
                                    @endforeach
                                </div>

{{--                                    values--}}
                                <div class="w-100">
                                    @foreach($attributesValue as $attributeValue)
                                        @if($attributeValue->attribute_id == 35 || $attributeValue->attribute_id == 36)
                                            <div class="d-inline font-weight-bold">
                                        @else
                                            <div class="d-block font-weight-bold">
                                                @endif
                                                @if($attributeValue->attributeOfValue->type_id == 5 && $attributeValue->value == 1)
                                                    {{$attributeValue->attributeOfValue->lable}}
                                                @elseif($attributeValue->attribute_id == 35)
                                                    {{$attributeValue->value}}
                                                @elseif($attributeValue->attribute_id == 36)
                                                    /{{$attributeValue->value}}m.
                                                @else
                                                    {{$attributeValue->value}}
                                                @endif
                                            </div>
                                    @endforeach
                                </div>
                            </div>

{{--                            komentarai--}}
                            <div class="d-flex bd-highlight mt-5">
                                <div class="h6" style="color: #2CB2BC;">Komentaras:</div>
                                <div style="width: 100%" class="pl-2">
                                <hr class="bg-white">
                                </div>

                            </div>
                            <div>
                                {{$advert->content}}
                            </div>

{{--                                Pardavėjo kontaktai--}}
                            <div class="d-flex bd-highlight mt-5">
                                <div class="h6" style="color: #2CB2BC;">Kontaktai:</div>
                                <div style="width: 100%" class="pl-2">
                                <hr class="bg-white">
                                </div>

                            </div>
                            <div>
                                {{$profile->phone}}
                            </div>
                            <div>
                                Miestas: {{$advert->city->name}}
                            </div>

                        </div>

    {{--antras--}}
                            <div class="card-body">
                                <img src="{{$advert->image}}" class="rounded mx-auto d-block mh-100 mw-100" alt="image">
                            </div>
                        </div>

                    </div>

{{--comments--}}
                    <div id="comment-section" class="card-body  mt-2 rounded" style="display: none">
                        <div class="card-header comment-bg rounded">Comments</div>
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
                            <div class="rounded border border-info mb-1">
                                <div class="card-header comment-bg rounded" >{{$comment->user->name}}

                                    @hasanyrole('client|admin')
                                    <form class="d-inline bd-highlight float-sm-right " action="{{route('comment.destroy',  $comment->id)}}" method="post">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit" class="btn btn-light btn-sm">Delete Comment</button>
                                    </form>
                                    @endhasanyrole

                                </div>
                                <div class="card-body blue-low-opacty">
                                    {{$comment->comment}}
                                </div>
                            </div>
                            @endforeach
                            </div>
                        </div>
                </div>

            </div>
        </div>
    </div>
        </div>
    </div>
    <button id="comment-button" class="btn btn-secondary button-css" style="display: block; width: 200px; margin: 0 auto; text-align: center; color: white; font-weight: bolder;">Comments</button>

    <script>
        $(document).ready(function(){
            $("#comment-button").click(function(){
                $("#comment-section").toggle();
            });
        });
    </script>
@endsection