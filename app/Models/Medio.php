<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Medio extends Model
{
    use HasFactory;

    public $table = 'medios';

    protected $fillable = [
        'nombre',
    ];

    //Un medio emite un programa
    public function programa()
    {
        return $this->belongsTo(Programa::class);
    }

    //Un medio tiene muchas plataformas
    public function medioPlataformas()
    {
        return $this->hasOne(MedioPlataforma::class);
    }
}
