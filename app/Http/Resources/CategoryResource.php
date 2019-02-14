<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class CategoryResource extends JsonResource
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
            'name_category' => $this->name_category,
            'created_at' => \Carbon\Carbon::parse($this->created_at)->formatLocalized('%A, %d %B %Y'),
        ];

        return[
            'count' => 21,
        ];
    }
}
