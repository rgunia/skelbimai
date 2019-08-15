@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Citiese</div>
                    <form class="mw-100" action="{{route('city.create')}}" method="post"><button type="submit" class="btn btn-primary btn-lg btn-block">Add new</button> </form>
                    <table class="table table-hover">
                            <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">City</th>
                                <th scope="col">Actions</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($cities as $city)
                            <tr>
                                <th scope="row">{{$city->id}}</th>
                                <td>{{$city->name}}</td>
                                <td><form class="d-inline" action="{{route('city.edit', $city->id)}}"><button type="submit" class="d-inline btn btn-primary btn-sm">Edit</button> </form>
                                    <form class="d-inline" action="{{route('city.destroy', $city->id)}}"> @method('DELETE') <button type="submit" class="d-inline btn btn-primary btn-sm">Delete</button> </form>
                                </td>
                            </tr>
                            @endforeach
                            </tbody>
                        </table>
                    <div class="card-body">
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection