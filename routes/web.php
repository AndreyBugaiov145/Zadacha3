<?php

use Illuminate\Support\Facades\Route;

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
/*Route::get('/', function () {
    return view('welcome');
});
*/
Auth::routes([
	"reset"=>false,
	'confirm' =>false,
	'verify' =>false,
]);
Route::get('/', 'CatalogController@index')->name('catalog');

Route::get('/put', 'CatalogController@putProduct')->name('putProduct');
Route::post('/put', 'CatalogController@putProductSubmit')->name('putProductSubmit');

Route::get('/{gatedoriId}', 'CatalogController@oneCategory')->name('category');
Route::get('/product/{id}', 'CatalogController@oneProduct')->name('product');
Route::get('/product/{id}/delete', 'CatalogController@deleteProduct')->name('deleteProduct');
Route::get('/product/{id}/update', 'CatalogController@updateProduct')->name('updateProduct');
Route::post('/product/{id}/update', 'CatalogController@updateProductSubmit')->name('updateProductSubmit');




