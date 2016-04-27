<html>
    <head>
        <title>Last News - Stay upbated about Lorem</title>
    </head>
    <body>
        <p>This is the most recent content </p>
        @forelse($posts as $post)
            <h1><a href="{{url('post', $post->id)}}">{{$post->title}}</a></h1>
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
        @empty
        
        @endforelse
    </body>
</html>
