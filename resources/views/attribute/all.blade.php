@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Attributes</div>
                    <a href="{{route('attribute.create')}}"  class="btn btn-primary btn-lg btn-block">Add new</a>
                    <table class="table table-hover">
                        <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Attribute</th>
                            <th scope="col">Lable</th>
                            <th scope="col">Actions</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($attributes as $attribute)
                            <tr>
                                <th scope="row">{{$attribute->id}}</th>
                                <td>{{$attribute->name}}</td>
                                <td>{{$attribute->lable}}</td>
                                <td><form class="d-inline" action="{{route('attribute.edit', $attribute->id)}}"><button type="submit" class="d-inline btn btn-primary btn-sm">Edit</button> </form>
                                    <form class="d-inline" action="{{route('attribute.delete', $attribute->id)}}"> @method('DELETE') <button type="submit" class="d-inline btn btn-primary btn-sm">Delete</button> </form>
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