<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PlataformaClasificacion extends Model
{
    use HasFactory;

    public $table = 'plataforma_clasificacions';

    protected $fillable = [
        'plataforma_id',
        'descripcion',
    ];

    //Una plataforma Clasificacion pertenece a una plataforma
    public function plataforma()
    {
        return $this->belongsTo(Plataforma::class,'plataforma_id');
    }
}
