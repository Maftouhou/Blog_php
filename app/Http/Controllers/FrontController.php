<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use App\Post;

use Auth;

class FrontController extends Controller
{
    /**
     * This function get all post from the Schema and display to the user 
     * 
     * @return function : the view that display the datas
     */
    public function index(){
        $pageNum = 10;
        $posts = Post::with('category', 'user', 'picture', 'tags')->paginate($pageNum);
        $postTitle = 'Liste des post';
        
        return view('front.index', compact('posts', 'postTitle', 'loginState'));
    }
    
    /**
     * This methode disply one post based on its ID
     * 
     * @return function : the view that display the post
     */
    public function show($id){
        $post = Post::find($id);
        
        return view('front.show', compact('post', 'loginState'));
    }
}