<?php

namespace App\Model\Transaksi;

use Illuminate\Database\Eloquent\Model;
use App\Model\Tiket\Tiket;

class Transaksi extends Model
{
    protected $guarded = [];

    public function tiket()
    {
        return $this->belongsTo(Tiket::class, 'id_tiket', 'id');
    }
}
