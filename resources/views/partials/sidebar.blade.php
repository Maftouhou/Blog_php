<ul id="category">
    @forelse($categories as $category)
    <li id="{{$category->id}}"><a href="{{url('category', $category->id)}}">{{$category->title}}</a></li>
    @empty
    @endforelse
</ul>
<ul id="la_une">
    <li>
        <figure>
            <img id="image_la_une" src="" alt="Image_a_la_une">
            <figcaption>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione quibusdam minima laborum placeat doloremque facilis impedit dolor molestiae nobis repudiandae.
            </figcaption>
        </figure>
    </li>
</ul>
