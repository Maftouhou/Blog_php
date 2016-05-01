@extends('layouts.master')

@section('content')
<div id="panel">
    <ul>
        <li><a href="{{url('post/create')}}">Create</a></li>
    </ul>
</div>
<div id="core">
    <table>
        <thead>
            <tr>
                <td>Titre</td>
                <td>Auteur</td>
                <td>Status</td>
                <td>Publication</td>
                <td>Category</td>
                <td>Tags</td>
                <td>Modification</td>
                <td>Editer</td>
                <td>Suprimer</td>
            </tr>
        </thead>
        @forelse($posts as $post)
            
        <tbody>
            <tr>
                <td><a href="{{url('post', $post->id)}}">{{$post->title}}</a></td>
                <td><b><em>
                    @if($post->user) {{$post->user->name}}
                    @else pas d'auteur
                    @endif
                </em></b></td>
                <td>{{$post->status}}</td>
                <td>{{$post->created_at}}</td>
                <td>
                    @if($post->category) {{$post->category->title}}
                    @else pas de category
                    @endif
                </td>
                <td>
                    @forelse($post->tags as $tag)
                        @if (!is_null($tag)) {{$tag->name}}
                        @else Pas de tag
                        @endif
                    @empty Pas de tag
                    @endforelse
                    <?php #var_dump($post->tags) ?>
                </td>
                <td>{{$post->updated_at}}</td>
                <td><a href="#">Editer</a></td>
                <td><a href="#">Suprimer</a></td>
            </tr>
        </tbody>
        @empty
            <p>Pas d'article</p>
        @endforelse
    </table>
</div>
@endsection