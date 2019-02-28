<?php

namespace App\Model\Tiket;

use Illuminate\Database\Eloquent\Model;
use App\Model\Category\Category;
use App\Model\Transaksi\Transaksi;

class Tiket extends Model
{
    protected $fillable = ['name_tiket', 'harga_tiket', 'jumlah_tiket', 'category_id'];

    public function categories()
    {
        return $this->belongsTo(Category::class, 'category_id');
    }

    public function transaksi()
    {
        return $this->hasMany(Transaksi::class, 'id_tiket', 'id');
    }
}
