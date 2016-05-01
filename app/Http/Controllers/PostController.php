<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use Auth;

use File;

use App\Tag;

use App\Post;

use App\Picture;

use App\Category;

use App\Http\Requests\PostRequest;


class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if (Auth::user()) {
            
            $posts = Post::all();

            return view('admin.post.index', compact('posts'));
        }  else {
            
            return view('auth.login', compact('loginState'));
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories = Category::lists('title', 'id');
        $tags = Tag::lists('name', 'id');
        $userId = Auth::user()->id;
        
        return view('admin.post.create', compact('categories', 'tags', 'userId'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $post = Post::create($request->all());
        
        if (!is_null($request->input('tag_id'))) {
            $post->tags()->attach($request->input('tag_id'));
        }
               
        $im = $request->file('picture');
//        dd($im);
        
        // refactoring voir plus bas la méthode private upload
        if (!is_null($im)) {
            $this->upload($im, $post->id);
        }
        
        return redirect('post')->with('message', 'success');
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
        
        return $post;
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $post = Post::find($id);
        $userId = Auth::user()->id;
        $categories = Category::all();
        $tags = Tag::lists('name', 'id');
        
        return view('admin.post.edit', compact('post', 'userId', 'categories', 'tags'));
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
        
        return redirect('post');
    }
    
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        return 'we are in the Delete methode';
    }
    
    private function deletePicture(Post $post)
    {
        if (!is_null($post->picture)) {
            $fileName = public_path('uploads') . DIRECTORY_SEPARATOR . $post->picture->uri;
            if (File::exists($fileName))
                File::delete($fileName);
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
