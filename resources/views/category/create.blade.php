@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Skelbimai</div>

                    <div class="card-body">
                        <form action="{{route('category.store')}}" method="post">
                            @csrf
                            <input  type="text" name="title" placeholder="Pavadinimas" class="form-control" >
                            <select name="parent_id">
                                <option value="0">-----</option>
                            </select>
                            <button type="submit" class="btn btn-light">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection