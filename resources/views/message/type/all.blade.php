@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Message Types</div>
                    <form class="mw-100" action="{{route('messagetype.create')}}" method="post">@csrf @method('head')<button type="submit" class="btn btn-primary btn-lg btn-block">Add new</button> </form>
                    <table class="table table-hover">
                        <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">City</th>
                            <th scope="col">Actions</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($types as $type)
                            <tr>
                                <th scope="row">{{$type->id}}</th>
                                <td>{{$type->type}}</td>
                                <td><form class="d-inline" action="{{route('messagetype.edit', $type->id)}}" method="get"><button type="submit" class="d-inline btn btn-primary btn-sm">Edit</button> </form>
                                    <form class="d-inline" action="{{route('messagetype.destroy', $type->id)}}"> @method('DELETE') <button type="submit" class="d-inline btn btn-primary btn-sm">Delete</button> </form>
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