<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use Auth;

use File;

use App\Tag;

use App\Post;

use App\Picture;

use Carbon;

use App\Category;

use App\Http\Requests\PostRequest;


class PostController extends Controller
{

    /**
     * Return array of notification messages. 
     */
    public function NotificationMessage()
    {

        $NotificationMessageArray = array(

                'success'   => array(
                        'create'    => 'L\'article a été enregistrer correctement',
                        'store'     => 'Article créer avec succès',
                        'update'    => 'Article mit a jour avec succès',
                        'destroy'   => 'L\'article '.$postTitle.' est supprimé avec succès'
                    ),

                'failure'   => array(
                        'create'    => '',
                        'store'     => '',
                        'update'    => '',
                        'destroy'   => ''
                    )
            );
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if (Auth::user()) {
            
            $posts      = Post::all();
            
            $categories = Category::all();

            return view('admin.post.index', compact('posts', 'categories'));
        }  else {
            
            return view('auth.login', compact('categories'));
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

        if (Auth::user()->role === 'admin') {
            
            $categories     = Category::all();
            $tags           = Tag::lists('name', 'id');
            $userId         = Auth::user()->id;
            
            $reposne        = 'L\'article a été enregistrer correctement';
            $reposneClass   = 'SuccessMssgClass';

            return view('admin.post.create', compact('categories', 'tags', 'userId'))->with(['message' => sprintf($reposne), 'class' => $reposneClass]);
        }
            
        $reposne = Auth::user()->name.', entant qu\''.Auth::user()->role.', '
                . 'Vous n\'avez pas les autorisation suffisant pour faire une publication';
        $reposneClass = 'ErrorMssgClass';

        return redirect('post')->with(['message' => sprintf($reposne), 'class' => $reposneClass]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if (Auth::user()->role === 'admin') {
            
            $post = Post::create($request->all());

            if (!is_null($request->input('tag_id'))) {
                $post->tags()->attach($request->input('tag_id'));
            }

            $im = $request->file('picture');

            // Inspiré de la connection
            if (!is_null($im)) {
                $this->upload($im, $post->id);
            }

            $contentMssg    = 'Article créer avec succès '.$post->id;
            $reposneClass   = 'SuccessMssgClass';

            return redirect('post')->with(['message' => sprintf($contentMssg), 'class' => $reposneClass]);
        }
        
        $haltMessage = 'violation d\'accès. Aucune sauvegarde ne peut etre effectué';
        $errorClass = 'ErrorMssgClass';
        
        return redirect('post')->with(['message' => sprintf($haltMessage), 'class' => $errorClass]);
    }
    
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $post = Post::find($id);
        
        $categories = Category::all();
        
        return view('front.show', compact('post', 'categories'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        if (Auth::user()->role === 'admin') {
            
            $post = Post::find($id);
            $userId = Auth::user()->id;
            $categories = Category::all();
            $tags = Tag::lists('name', 'id');

            $curentDate = Carbon\Carbon::now();

            return view('admin.post.edit', compact('post', 'userId', 'categories', 'tags', 'curentDate'));
        }
        
        $reposne = Auth::user()->name.', entant qu\''.Auth::user()->role.', '
                . 'Vous n\'avez pas les autorisation suffisant pour Modifier un article';
        $reposneClass = 'ErrorMssgClass';
        
        return redirect('post')->with(['message' => sprintf($reposne), 'class' => $reposneClass]);
    }

    /**
    * Update the specified resource in storage.
    *
    * @param  \Illuminate\Http\Request  $request
    * @param  int  $id
    * @return \Illuminate\Http\Response
    */
    public function update(Request $request, $id)
    {
        if (Auth::user()->role === 'admin') {
            $post = Post::findOrFail($id);

            $post->update($request->all());

            if (!is_null($request->input('tag_id'))) {
                $post->tags()->sync($request->input('tag_id'));
            }

            $image = $request->file('picture');

            if ($request->input('delete_picture')) {
                $this->deletePicture($post);
                $message[] = 'success delete image';
            }

            if (!is_null($image)) {
                $this->deletePicture($post);
                $this->upload($image, $post->id);
                $message[] = 'success upload image';
            }
            $reposne = 'Article mit a jour avec succès';
            $reposneClass = 'SuccessMssgClass';
            
            return redirect('post')->with(['message' => sprintf($reposne), 'class' => $reposneClass]);
        }
        
        $haltMessage = 'violation d\'accès. Aucune sauvegarde ne peut etre effectué';
        $errorClass = 'ErrorMssgClass';
        
        return redirect('post')->with(['message' => sprintf($haltMessage), 'class' => $errorClass]);
    }
    
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        if (Auth::user()->role === 'admin') {
            
            $post = Post::findOrFail($id);
            $postTitle = $post->title;

            $post->delete();
            
            $reposne = 'L\'article '.$postTitle.' est supprimé avec succès';
            $reposneClass = 'SuccessMssgClass';

            return redirect('post')->with(['message' => sprintf($reposne), 'class' => $reposneClass]);
        }
        
        $reposne = Auth::user()->name.', entant qu\''.Auth::user()->role.', '
                . 'Vous n\'avez pas les autorisations suffisant pour supprimer un article';
        $reposneClass = 'ErrorMssgClass';
        
        return redirect('post')->with(['message' => sprintf($reposne), 'class' => $reposneClass]);
    }
    
    private function deletePicture(Post $post)
    {
        if (!is_null($post->picture)) {
            $fileName = public_path('uploads') . DIRECTORY_SEPARATOR . $post->picture->uri;
            if (File::exists($fileName)){
                File::delete($fileName);
            }
            $post->picture->delete();
            return true;
        }
        return false;
    }
    
    
    private function upload($img, $postId)
    {
        $image_extention = $img->getClientOriginalExtension();
        $image_base_name = Auth::user()->id.'_'.time();
        $uri = Auth::user()->id.'_'.time().'.'.$image_extention; //User_id timestamp file base name
        
        Picture::create([
            'name' => $image_base_name,
            'uri' => $uri,
            'size' => $img->getSize(),
            'mime' => $img->getClientMimeType(),
            'post_id' => $postId
        ]);
        
        // exception levé par le framework si pb
        $img->move(env('UPLOAD_PICTURES', 'uploads'), $uri);
        
        return true;
    }
}
