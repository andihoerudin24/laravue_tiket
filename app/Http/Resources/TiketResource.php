<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class TiketResource extends JsonResource
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
            'name_tiket' => $this->name_tiket,
            'harga_tiket' => $this->harga_tiket,
            'category_id' => $this->categories->id,
            'jumlah_tiket' => $this->jumlah_tiket,
            'name_category' => $this->categories->name_category,
            'created_at' => \Carbon\Carbon::parse($this->created_at)->formatLocalized('%A, %d %B %Y'),
        ];
    }
}
