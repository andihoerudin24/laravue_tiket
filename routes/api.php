<?php

Route::resource('/tiket', 'Tiket\TiketController');
Route::resource('/category', 'Category\CategoryController');

Route::get('/transaksi', 'Transaksi\TransaksiController@index');
Route::delete('/transaksi/{transaksi}', 'Transaksi\TransaksiController@destroy');
Route::get('/transaksi/update', 'Transaksi\TransaksiController@update');
Route::post('/transaksi/store',  'Transaksi\TransaksiController@store');
