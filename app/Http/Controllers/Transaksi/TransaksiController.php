<?php

namespace App\Http\Controllers\Transaksi;

use App\Http\Controllers\Controller;
use App\Model\Transaksi\Transaksi;
use App\Http\Resources\TransaksiResource;
use Illuminate\Http\Response;

class TransaksiController extends Controller
{
    public function index()
    {
        return TransaksiResource::collection(Transaksi::where('status', 0)->latest()->get());
    }

    public function destroy(Transaksi $transaksi)
    {
        $transaksi->delete();

        return response(Response::HTTP_ACCEPTED);
    }
}
