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

Route::get('/{locale}', function ($locale) {
    \Illuminate\Support\Facades\App::setLocale($locale);
    return view('index');
});

Route::get('/panel', function () {
    return view('app');
});


Route::get('/{locale}', 'CarController@index');
Route::post('/get_car_by_id/', 'CarController@getCarById');
Route::post('/get_precio_alquiler_auto_by_date_range/', 'CarController@getPrecioAlquilerAutoByDateRange');

