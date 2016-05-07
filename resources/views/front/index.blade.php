@extends('layouts.master')

@section('title', $postTitle)

@section('content')
    <div class="page_pagination">
        {{$posts->links()}}
    </div>
    @forelse($posts->reverse() as $post)
    <article class="article_wrapper">
        <h2><a href="{{url('article', $post->id)}}">{{$post->title}}</a></h2>
        @if(!is_null($post->picture))
        <figure id="{{$post->picture->id}}">
            <a href="{{url('article', $post->id)}}">
                <img src="{{url('uploads', $post->picture->uri)}}">
            </a>
            <div class="vote_banner">
                <span>voter ici</span><br>
                <a href="#" class="vote_banner_marker">&starf;</a><br>
                <span>233</span>
            </div>
        @else <p>Pas de photo associé</p>
        @endif
            <figcaption>
                <p class="article_content">{{str_limit($post->content, 70)}}<br>
                    <a href="{{url('article', $post->id)}}"><span class="read_more">Lire la suite</span></a>
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
    <div class="page_pagination">
        {{$posts->links()}}
    </div>
@endsection
