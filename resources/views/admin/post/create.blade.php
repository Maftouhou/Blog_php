@extends('layouts.master')

@section('content')
    <form action="{{url('post')}}" method="POST">
        {{csrf_field()}}
        <fieldset>
            <legend>Editer l'article</legend>
            <p>Creer un nouvel article </p>
            <p>Titre de l'article <br>
                <input type="text" name="title" placeholder="Titre de l'Article">
            </p>
            <p>Contenu de l'article <br>
                <textarea name="content" id="" cols="30" rows="10" placeholder="Contenu de l article"></textarea>
            </p>
        </fieldset>

        <fieldset>
            <legend>Selectionner les options</legend>
            <p>Status de l'article <br>
                <label for="draft">draft</label>
                <input type="radio" id="draft" name="status" value="['draft']"><br>
                <label for="online">online</label>
                <input type="radio" id="online" name="status" value="['online']"><br>
                <label for="offline">offline</label>
                <input type="radio" id="offline" name="status" value="['offline']"><br>
            </p>
            <p> Selectionner une categorie <br>
                <select name="category" id="">
                    <option>- Selectionner -</option>
                    @forelse($categories as $category_id => $category_value)
                        @if(!is_null($category_value))
                            <option value="{{$category_id}}">{{$category_value}}</option>
                        @else

                        @endif
                    @empty

                    @endforelse
                </select>
            </p>
            <p>Selectionner une des mots clé <br>
                <select name="tags[]" id="" multiple>
                    @forelse($tags as $tag_id => $tag_value)
                        @if(!is_null($tag_value))
                            <option value="{{$tag_id}}">{{$tag_value}}</option>
                        @else

                        @endif
                    @empty

                    @endforelse
                </select>
            </p>
        </fieldset>
        <p>
            <input type="submit" value="Envoyer">
        </p>
    </form>
@endsection