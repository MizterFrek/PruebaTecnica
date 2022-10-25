<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PlanMedio extends Model
{
    use HasFactory;

    public $table = 'plan_medios';

    protected $fillable = [
        'campaign_id',
        'nombre'
    ];

    //Un Plan Medio pertenece a una campaña
    public function campaign()
    {
        return $this->belongsTo(Campaign::class,'campaign_id');
    }

}
