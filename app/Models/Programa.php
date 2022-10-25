<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Programa extends Model
{
    use HasFactory;

    public $table = 'programas';

    protected $fillable = [
        'nombre',
    ];

    public function medio()
    {
        return $this->belongsTo(Medio::class);
    }
}
