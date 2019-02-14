<?php

namespace App\Http\Controllers;

class CategoriesController extends Controller
{
    public function index()
    {
        return view('kategori.index');
    }

    public function create()
    {
        return view('kategori.create');
    }
}
