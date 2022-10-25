<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Persona extends Model
{
    use HasFactory;

    public $table = 'personas';

    protected $fillable = [
        'apellidos',
        'nombres',
    ];

    //Una persona equivale a un programa contacto
    public function programaContacto()
    {
        return $this->hasOne(ProgramaContacto::class);
    }
}
