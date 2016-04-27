<p>This is One selected article</p>

<h1>{{$post->title}}</h1>
<p>{{$post->content}}</p>
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
