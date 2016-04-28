@extends('layouts.master')

@section('content')
    <form id="login_request" action="{{url(('login'))}}" method="POST">
        {{csrf_field()}}
        <p>Identifier-vous</p>
        <p>
            <input type="text" name="name" placeholder="Your name here">
        </p>
        <p>
            <input type="password" name="password" placeholder="Your password here">
        </p>
        <p>
            <input type="submit" value="Connection">
        </p>
    </form>
@endsection
