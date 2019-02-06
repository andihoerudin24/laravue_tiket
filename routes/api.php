<?php

Route::resource('/tiket', 'Tiket\TiketController');
Route::resource('/category', 'Category\CategoryController');
Route::get('/transaksi', 'Transaksi\TransaksiController@index');
Route::delete('/transaksi/{transaksi}', 'Transaksi\TransaksiController@destroy');
