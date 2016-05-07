@extends('layouts.master')

@section('content')
    <p class="page_pagination category_page">
    </p>
    @forelse($posts as $post)
    <article class="article_wrapper">
        <h2><a href="{{url('article', $post->id)}}">{{$post->title}}</a></h2>
        @if(!is_null($post->picture))
        <figure id="{{$post->picture->id}}">
            <img src="{{url('uploads', $post->picture->uri)}}">
            <div class="vote_banner">
                <span class="vote_banner_marker">&starf;</span>
            </div>
        @else <p>Pas de photo associé</p>
        @endif
            <figcaption>
                <p class="article_content">{{str_limit($post->content, 70)}}<br>
                    <span class="read_more"><a href="{{url('article', $post->id)}}">Lire la suite</a></span>
                </p>
                <p class="meta_data"><span class="meta_data_date">Published on {{$post->created_at}}</span>
                    @if(!is_null($post->user))
                    by <span class="meta_data_user">{{$post->user->name}}</span>
                    @else
                    @endif
                </p>
            </figcaption>
        </figure>
    </article>
    @empty
        <p>Pas d'article</p>
    @endforelse
@endsection