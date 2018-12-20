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

Route::post('/register', 'ApiAuthController@register');
Route::post('/login', 'ApiAuthController@login');

//beranda review
Route::get('/getReview', 'ApiReviewController@getReview');
Route::post('/tambahReview/{id}', 'ApiReviewController@tambahReview')->middleware('auth:api');
Route::get('/detailReview/{id_r}', 'ApiReviewController@detailReview')->middleware('auth:api');

//listevent
Route::get('/getEvent', 'ApiEventController@getEvent');
Route::post('/tambahEvent/{id}', 'ApiEventController@tambahEvent')->middleware('auth:api');
Route::get('/detailEvent/{id_e}', 'ApiEventController@detailEvent')->middleware('auth:api');

//komentar
Route::get('/getKomentar/{id_r}', 'ApiKomentarController@getKomentar');

//profil
Route::get('/getProfil/{id}', 'ApiProfilController@getProfil')->middleware('auth:api');

