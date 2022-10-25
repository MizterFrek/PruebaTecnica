<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class ClienteResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return [
            'data'=>[
                'nombreComercial' =>$this->nombreComercial,
                'razonSocial'     =>$this->razonSocial,
                'rubro'           =>$this->rubro,
            ],
            'observacion'     =>$this->observacion,
        ];

    }
}
