<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Cliente extends Model
{
    use HasFactory;

    public $table = 'clientes';

    protected $fillable = [
        'nombreComercial',
        'razonSocial',
        'rubro',
        'observacion'
    ];

}
