@extends('layouts.master')

@section('content')
<form id="login_request" action="" method="POST">
    {{csrf_field()}}
    <p>Identifier-vous</p>
    <p>
        <input type="text" name="login" placeholder="Your name here">
    </p>
    <p>
        <input type="password" name="password" placeholder="Your password here">
    </p>
    <p>
        <input type="submit" value="Envoyer">
    </p>
</form>
@endsection