<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Campaign extends Model
{
    use HasFactory;
    public $table = 'campaigns';

    protected $fillable = [
        'titulo'
    ];


    //Una Campaña pertenece a un Cliente
    public function cliente()
    {
        return $this->belongsTo(Cliente::class);
    }

}
