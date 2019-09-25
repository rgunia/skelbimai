@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Attribute Sets</div>
                <a href="{{route('attributeset.create')}}"  class="btn btn-primary btn-lg btn-block">Add new</a>
                <table class="table table-hover">
                    <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Attribute Set</th>
                        <th scope="col">Category</th>
                        <th scope="col">Actions</th>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach($attribute_sets as $attribute_set)
                    <tr>
                        <th scope="row">{{$attribute_set->id}}</th>
                        <td>{{$attribute_set->name}}</td>
                        <td>{{$attribute_set->category->category->title}}</td>
                        <td><a class="d-inline btn btn-primary btn-sm mr-2" href="{{route('attributeset.edit', $attribute_set->id)}}" >Edit </a>
                            <form class="d-inline" action="{{route('attributeset.delete', $attribute_set->id)}}" method="post"> @csrf @method('DELETE') <button type="submit" class="d-inline btn btn-primary btn-sm">Delete</button> </form>
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