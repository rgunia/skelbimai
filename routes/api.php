<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/subscribers', 'Api\SubscribersController@index');
Route::post('/subscribers', 'Api\SubscribersController@create');
Route::delete('/subscribers/{id}', 'Api\SubscribersController@delete');