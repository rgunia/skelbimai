@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Categories</div>
                    <form class="mw-100" action="{{route('category.create')}}" method="get" > <input type="submit" class="btn btn-primary btn-lg btn-block" value="Add new"> </form>

                    <table class="table table-hover">
                        <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Title</th>
                            <th scope="col">Parent ID</th>
                            <th scope="col">Slug</th>
                            <th scope="col">active</th>
                            <th scope="col">Actions</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($categories->where('parent_id', 0) as $category)
                            <tr @if($category->parent_id == 0) class="table-primary font-weight-bold" @endif>
                                <th scope="row">{{$category->id}}</th>
                                <td>{{$category->title}}</td>
                                <td>{{$category->parent_id}}</td>
                                <td>{{$category->slug}}</td>
                                <td>{{$category->active}}</td>
                                <td><form class="d-inline" action="{{route('category.edit', $category->id)}}"><button type="submit" class="d-inline btn btn-primary btn-sm">Edit</button> </form>
                                    <form class="d-inline" action="{{route('category.destroy', $category->id)}}"> @method('DELETE') <button type="submit" class="d-inline btn btn-primary btn-sm">Delete</button> </form>
                                </td>
                            </tr>
                            @foreach($category->subCategory as $sub)
                                <tr>
                                    <th scope="row">{{$sub->id}}</th>
                                    <td>{{$sub->title}}</td>
                                    <td>{{$sub->parent_id}}</td>
                                    <td>{{$sub->slug}}</td>
                                    <td>{{$sub->active}}</td>
                                    <td><form class="d-inline" action="{{route('category.edit', $sub->id)}}"><button type="submit" class="d-inline btn btn-primary btn-sm">Edit</button> </form>
                                        <form class="d-inline" action="{{route('category.destroy', $sub->id)}}"> @method('DELETE') <button type="submit" class="d-inline btn btn-primary btn-sm">Delete</button> </form>
                                    </td>
                                </tr>
                            @endforeach
                            <th><td></td><td></td><td></td><td></td><td></td></th>
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