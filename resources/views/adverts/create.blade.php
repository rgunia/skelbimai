@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Skelbimai</div>

                    <div class="card-body">
                        <form action="/" method="post">
                            @csrf
                            <input  type="text" name="title" placeholder="Pavadinimas" class="form-control" >
                            <textarea class="form-control" name="contentas" placeholder="Skelbimo turinys"></textarea>
                            <input  type="text" name="image" placeholder="Nuotrauka" class="form-control" >
                            <input  type="number" name="price" placeholder="Kaina" class="form-control" >
                            <select>
                                <option >Pasirinkti kategorija</option>
                                @foreach($categories as $categorie)
                                    <option value="{{$categorie->id}}">{{$categorie->title}}</option>
                                @endforeach
                            </select>
                            <button type="submit" class="btn btn-light">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection