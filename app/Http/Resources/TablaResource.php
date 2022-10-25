<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class TablaResource extends JsonResource
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
            'Cliente'   => $this->planMedio->campaign->cliente->nombreComercial,
            'Campaña'   => $this->planMedio->campaign->titulo,
            'PlanMedio' => $this->planMedio->nombre,

            'NombrePeriodista'   => $this->programaContacto->persona->nombres,
            'ApellidoPeriodista' => $this->programaContacto->persona->apellidos,
            'Medio'              => $this->programaContacto->programa->medio->nombre,
            'NombrePrograma'     => $this->programaContacto->programa->nombre,

            'PlataformaDescripcion'     => $this->programaContacto->programa->medio->medioPlataformas->plataformaClasificacion->descripcion,
            'PlataformaClasificacion'   => $this->programaContacto->programa->medio->medioPlataformas->plataformaClasificacion->plataforma->descripcion,
        ];
    }
}
