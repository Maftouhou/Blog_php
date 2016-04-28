<?php

use Auth;
use App\Http\Requests;
use Illuminate\Http\Request;
namespace App\Http\Controllers;

class loginController extends Controller
{
    
    /**
     * This function open a session to allow connexion for the user to the Dashbord
     * 
     * @return function
     */
    public function login(){
        
        return view('auth.login');
    }
    
    /**
     * This function close curent session
     * 
     * @return
     */
    public function logout(){
        Auth::logout();
        
        return redirect('/');
    }
}
