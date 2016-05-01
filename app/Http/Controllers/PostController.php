<?php


namespace App\Http\Controllers;

use App\Http\Requests;

use Illuminate\Http\Request;

use App\Http\Requests\PostRequest;

use App\Category;

use App\Post;

use App\tag;

use Auth;

use View;

use File;


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
    public function store(PostRequest $request)
    {
        $post = Post::create($request->all());
        
        if (!is_null($request->input('tag_id'))) {
            $post->tags()->attach($request->input('tag_id'));
        }
               
        dd($request);
        
        // refactoring voir plus bas la méthode private upload
//        if (!is_null($im)) {
//            $this->upload($im, $request->input('name'), $post->id);
//        }
        
        return redirect('post')->with('message', 'success');
    }
    
    private function upload($im, $name, $postId)
    {
        $ext = $im->getClientOriginalExtension(); // extension du fichier
        $uri = str_random(50) . '.' . $ext;
        Picture::create([
            'name' => $name,
            'uri' => $uri,
            'size' => $im->getSize(),
            'mime' => $im->getClientMimeType(),
            'post_id' => $postId
        ]);
        // exception levé par le framework si pb
        $im->move(env('UPLOAD_PICTURES', 'uploads'), $uri);
        return true;
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
