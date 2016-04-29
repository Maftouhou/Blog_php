<?php

namespace App\Http\Controllers;

use Auth;

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
        
        $loginState = !is_null(Auth::user())? true : false;
        
        if ($request->isMethod('POST')) {
            
            $this->validate($request, [
                'name' => 'required',
                'password' => 'required'
            ]);
            
            $credencials = $request->only('name', 'password');
            if (Auth::attempt($credencials) /*&& Auth::usesr()->role == 'Admin'*/) {
                
                return redirect('post')->with(['message' => 'Success']);
            }else{
                
                return back()->withInput($request->only('login'))->with(['message' => 'Authentification faild']);
            }
            
        }else{
            return view('auth.login', compact('loginState'));
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
