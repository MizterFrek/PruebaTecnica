<?php

namespace App\Http\Controllers;

use App\Http\Resources\TablaCollection;
use App\Http\Resources\TablaResource;
use App\Models\DetallePlanMedio;
use Illuminate\Http\Request;

class TablaController extends Controller
{
    public function __invoke()
    {
        return new TablaCollection(DetallePlanMedio::orderby('id','asc')->paginate());
    }
}
