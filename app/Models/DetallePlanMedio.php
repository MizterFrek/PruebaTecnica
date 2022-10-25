<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DetallePlanMedio extends Model
{
    use HasFactory;

    public $table ="detalle_plan_medios";

    protected $fillable = [
        'idPlanMedio',
        'idProgramaContacto',
        'idsMedioPlataforma',
    ];

    //Un Detalle Plan Medio pertenece a un Plan Medio
    public function planMedio()
    {
        return $this->belongsTo(PlanMedio::class,'idPlanMedio');
    }
    //Un Detalle Plan Medio pertenece a un Programa Contactos
    public function programaContacto()
    {
        return $this->belongsTo(ProgramaContacto::class,'idProgramaContacto');
    }
}
