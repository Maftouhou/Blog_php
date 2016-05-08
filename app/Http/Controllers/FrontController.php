<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use App\Category;

use App\Picture;

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
        $picture = Picture::all();
        
        $categories = Category::all();
        
        return view('front.index', compact('posts', 'postTitle', 'picture', 'categories'));
    }
    
    /**
     * This methode disply one post based on its ID
     * 
     * @return function : the view that display the post
     */
    public function show($id){
        $post = Post::findOrFail($id);
        
        $categories = Category::all();
        
        return view('front.show', compact('post', 'categories'));
    }
    
    public function showPostDyCategory($id){
        
        $category = Category::find($id);
        $categories = Category::all();
        $posts = $category->posts()->get();
        
        return view('front.postByCategory', compact('posts', 'categories'));
    }
}
