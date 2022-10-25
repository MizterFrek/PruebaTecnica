<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MedioPlataforma extends Model
{
    use HasFactory;

    public $table = 'medio_plataformas';

    protected $fillable =[
        'idPlataformaClasificacion'
    ];

    //muchos medioPlataforma pertenecen a un Medio
    public function medio()
    {
        return $this->hasOne(Medio::class);
    }

    //Un Medio plataforma tiene una PlataformaClasificacion
    public function plataformaClasificacion()
    {
        return $this->belongsTo(PlataformaClasificacion::class,'idPlataformaClasificacion');
    }
}
