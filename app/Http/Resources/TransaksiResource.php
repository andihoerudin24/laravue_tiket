<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class TransaksiResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param \Illuminate\Http\Request $request
     *
     * @return array
     */
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'name_tiket' => $this->tiket->name_tiket,
            'harga_tiket' => $this->tiket->harga_tiket,
            'total' => $this->tiket->harga_tiket * $this->qty,
            'qty' => $this->qty,
            'status' => $this->status,
            'created_at' => \Carbon\Carbon::parse($this->created_at)->formatLocalized('%A, %d %B %Y'),
        ];
    }
}
