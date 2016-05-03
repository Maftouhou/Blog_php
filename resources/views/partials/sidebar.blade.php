<aside id="sidebar">
    <ul id="category">
        @forelse($categories as $category)
        <li id="{{$category->id}}"><a href="{{url('category', $category->id)}}">{{$category->title}}</a></li>
        @empty
        @endforelse
    </ul>
    <ul id="la_une">
        <li>
            <figure>
                <img src="" alt="Image_a_la_une">
                <figcaption>
                    text image a la une
                </figcaption>
            </figure>
        </li>
    </ul>
</aside>