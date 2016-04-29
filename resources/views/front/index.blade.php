@extends('layouts.master')

@section('title', $postTitle)

@section('content')
    <p>This is the most recent content </p>
    @forelse($posts as $post)
        <h1><a href="{{url('article', $post->id)}}">{{$post->title}}</a></h1>
        
        <p>{{$post->content}}<span><a href="{{url('article', $post->id)}}">Lire la suite</a></span></p>
        @if(!is_null($post->picture))
            <p><img src="{{url('uploads', $post->picture->uri)}}"></p>
        @else
        @endif
        
        <span>Published on {{$post->published_at}}
        @if(!is_null($post->user))
            by <b><em>{{$post->user->name}}</em></b>
        @else
        @endif
        </span>
        <hr>
    @empty
        <p>Pas d'article</p>
    @endforelse
    
@endsection