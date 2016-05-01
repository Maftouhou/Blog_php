@extends('layouts.master')

@section('content')
    <p>This is One selected article</p>

    <h1>{{$post->title}}</h1>
    <p>{{$post->content}}</p>
    @if(!is_null($post->picture))
        <p id="{{$post->picture->id}}"><img src="{{url('uploads', $post->picture->uri)}}"></p>
    @else
    @endif
    <span>Published on {{$post->published_at}}
    @if(!is_null($post->user))
        by <b><em><span><a href="#">{{$post->user->name}}</a></span></em></b>
    @else
    @endif
    </span>
    <hr>
@endsection
