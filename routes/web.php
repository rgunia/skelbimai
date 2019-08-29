<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

//search routes
Route::get('/search', 'SearchController@search')->name('search');
//upload routes
Route::post('/profile/storeImage', 'UserController@storeImage')->name('profile.storeImage');
// message routes
Route::get('/message', 'MessageController@showClient')->name('message.showClient');
Route::get('admin/message', 'AdminController@adminMessages')->name('admin.Messages');
Route::get('/message/create', 'MessageController@create')->name('message.create');
Route::get('/message/{id}/edit', 'MessageController@edit')->name('message.edit');
Route::post('/message/{id}/update', 'MessageController@update')->name('message.update');
Route::get('/message/showOne/{id}', 'MessageController@showOne')->name('message.showOne');
Route::post('/message/store', 'MessageController@store')->name('message.store');
Route::get('/message/showSendsAdmin', 'MessageController@showSendsAdmin')->name('message.showSendsAdmin');
Route::get('/message/showDraftsAdmin', 'MessageController@showDraftsAdmin')->name('message.showDraftsAdmin');
Route::get('/messagetype', 'MessageTypeController@index')->name('messagetype.index');
Route::get('/messagetype/create', 'MessageTypeController@create')->name('messagetype.create');
Route::post('/messagetype/store', 'MessageTypeController@store')->name('messagetype.store');
Route::get('/messagetype/{id}/edit', 'MessageTypeController@edit')->name('messagetype.edit');
Route::post('/messagetype/{id}/update', 'MessageTypeController@update')->name('messagetype.update');
Route::post('/messagetype/{id}/destroy', 'MessageTypeController@destroy')->name('messagetype.destroy');


Auth::routes();
//resourced controllers routes
Route::resource('advert', 'AdvertController');
Route::resource('home', 'HomeController');
Route::resource('category', 'CategoryController');
Route::resource('city', 'CityController');
Route::resource('comment', 'CommentsController');
Route::resource('admin', 'AdminController');
Route::resource('user', 'UserController');