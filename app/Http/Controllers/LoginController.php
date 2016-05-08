<?php

namespace App\Http\Controllers;

use Auth;

use App\Category;

use App\Http\Requests;

use Illuminate\Http\Request;

class LoginController extends Controller
{
    
    /**
     * This function open a session to allow connexion for the user to the Dashbord
     * 
     * @return function
     */
    public function login(Request $request){
        
        $categories = Category::all();
        
        if ($request->isMethod('POST')) {
            
            $this->validate($request, [
                'name' => 'required',
                'password' => 'required'
            ]);
            
            $credencials = $request->only('name', 'password');
            if (Auth::attempt($credencials)) {
                
                $reponse = 'Bonjour '.Auth::user()->name;
                $errorClass = 'SuccessMssgClass';
                
                return redirect('post')->with(['message' => sprintf($reponse), 'class' => $errorClass]);
            }else{
                
                return back()->withInput($request->only('login'))->with(['message' => 'Authentification faild']);
            }
            
        }else{
            return view('auth.login', compact('categories'));
        }
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
