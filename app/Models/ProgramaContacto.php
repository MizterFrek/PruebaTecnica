<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProgramaContacto extends Model
{
    use HasFactory;

    public $table ="programa_contactos";

    protected $fillable =[
        'idContacto',
    ];

    //Un Programa Contacto pertenece a una persona
    public function persona()
    {
        return $this->belongsTo(Persona::class,'idContacto');
    }

    //Un Programa Contacto tiene muchos programas
    public function programa()
    {
        return $this->belongsTo(Programa::class);
    }
}
