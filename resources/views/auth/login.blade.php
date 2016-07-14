@extends('layouts.master')

@section('content')
    <p class="action_response {{session('class')}}">
        {{session('message')}}
        <span></span>
    </p>
    <form id="login_request" action="{{url(('login'))}}" method="POST">
        {{csrf_field()}}
        <fieldset>
            <legend>Identifier-vous</legend>
            
            <p>
                <input type="text" name="name" placeholder="Your name here">
            </p>
            <p>
                <input type="password" name="password" placeholder="Your password here">
            </p>
            <p>
                <input type="submit" value="Connection">
            </p>
        </fieldset>
    </form>
@endsection
