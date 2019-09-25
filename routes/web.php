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

Route::get('/attributeset', 'AttributesController@setIndex')->name('attributeset.index');
Route::get('/attribute', 'AttributesController@index')->name('attribute.index');
Route::get('/attributeset/attributesetcreate', 'AttributesController@attributeSetCreate')->name('attributeset.create');
Route::post('/attributeset/attributesetstore', 'AttributesController@attributeSetStore')->name('attributeset.store');
Route::get('/attributeset/{id}/attributesetedit', 'AttributesController@attributeSetEdit')->name('attributeset.edit');
Route::post('/attributeset/{id}/attributesetupdate', 'AttributesController@attributeSetUpdate')->name('attributeset.update');
Route::delete('/attributeset/{id}/attributesetdelete', 'AttributesController@attributeSetDelete')->name('attributeset.delete');
Route::get('/attribute/attributecreate', 'AttributesController@attributeCreate')->name('attribute.create');
Route::post('/attribute/attributestore', 'AttributesController@attributeStore')->name('attribute.store');
Route::get('/attribute/{id}/attributeedit', 'AttributesController@attributeEdit')->name('attribute.edit');
Route::post('/attribute/{id}/attributeupdate', 'AttributesController@attributeUpdate')->name('attribute.update');
Route::post('/attribute/{id}/attributedelete', 'AttributesController@attributeDelete')->name('attribute.delete');

Auth::routes();
//resourced controllers routes
Route::resource('advert', 'AdvertController');
Route::post('/advert/createsteptwo', 'AdvertController@createStepTwo')->name('advert.createsteptwo');

//Axaj
Route::post('/ajaxModelResponse', 'AjaxController@carModelResposne')->name('ajax.carmodelresponse');


Route::resource('home', 'HomeController');
Route::resource('category', 'CategoryController');
Route::resource('city', 'CityController');
Route::resource('comment', 'CommentsController');
Route::resource('admin', 'AdminController');
Route::resource('user', 'UserController');

//api

//Route::get('/api/subscribers', 'Api\SubscribersController@index');