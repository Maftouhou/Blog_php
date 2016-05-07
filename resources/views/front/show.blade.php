@extends('layouts.master')

@section('content')

<article class="article_wrapper single_post">
    <h1>{{$post->title}}</h1>

    <figure id="{{$post->id}}">

        @if(!is_null($post->picture))
            <img class="simgle_image" src="{{url('uploads', $post->picture->uri)}}">
        @else <p>Pas de photo associé</p>
        @endif

        <figcaption>
            <p class="meta_data">
                @if(!is_null($post->user))
                By <span class="meta_data_user">{{$post->user->name}}</span>
                @else
                @endif
                <span class="meta_data_date"> on {{$post->created_at}}</span>
            </p>
            <p class="article_content">
                {{$post->content}}
            </p>
        </figcaption>
    </figure>
</article>

@endsection
