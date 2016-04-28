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
Route::get('/', 'frontController@index');
Route::get('post/{id}', 'frontController@show');

/* Route Login */
Route::get('login', 'loginController@login');
Route::get('logout', 'loginController@logout');

