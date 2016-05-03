<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

/* Route Front */
Route::get('/', 'FrontController@index');
Route::get('article/{id}', 'FrontController@show');
Route::get('category/{id}', 'FrontController@showPostDyCategory');

/* Route Login */
    
Route::group(['midleware' => ['web']], function(){
    
    
    Route::any('login', 'LoginController@login');
    Route::any('logout', 'LoginController@logout');
    
    Route::group(['midleware' => ['auth']], function(){
        route::resource('post', 'PostController');
    });
});
