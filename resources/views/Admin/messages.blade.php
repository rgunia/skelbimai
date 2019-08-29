@extends('layouts.app')
<?php use Carbon\Carbon; ?>
@section('content')
    <div class="container">
        <h1>Admin Messages</h1>
        <div>
            <a class="btn btn-secondary" href="{{ route('message.create') }}">
                Write new
            </a>
            <a class="btn btn-secondary" href="{{ route('message.showSendsAdmin') }}">
                View Send messages
            </a>
            <a class="btn btn-secondary" href="{{ route('message.showDraftsAdmin') }}">
                View Drafts
            </a>
            <a class="btn btn-secondary" href="{{ route('messagetype.index') }}">
                Message types
            </a>

        </div>

    </div>
@endsection