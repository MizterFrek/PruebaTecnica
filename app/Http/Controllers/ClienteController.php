<?php

namespace App\Http\Controllers;

use App\Http\Resources\ClienteCollection;
use App\Http\Resources\ClienteResource;
use App\Models\Cliente;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class ClienteController extends Controller
{
    public function index()
    {
        return new ClienteCollection(Cliente::orderby('id','asc')->paginate());
    }

    public function store(Request $request)
    {
        $datos = $request->only('nombreComercial','razonSocial','rubro','observacion');
        $validacion = Validator::make($datos,[
            'nombreComercial' => 'required|unique:clientes,nombreComercial',
            'razonSocial'     => 'required|unique:clientes,razonSocial',
            'rubro'           => 'required'
        ]);

        if($validacion->fails())
        {
            return response()->json([
               'status' => false,
               'mensaje' => 'Hubo un problema en la validación.',
               'errores' => $validacion->errors()
            ],401);
        }


        $cliente = Cliente::create($datos);
        return response()->json([
            'status' => true,
            'mensaje' => 'Cliente creado satifactoriamente..!',
        ],200);

    }

    public function show(Cliente $cliente)
    {
        return new ClienteResource($cliente);
    }

    public function update(Request $request, Cliente $cliente)
    {
        $datos = $request->only('nombreComercial','razonSocial','rubro','observacion');
        $validacion = Validator::make($datos,[
            'nombreComercial' => 'unique:clientes,nombreComercial',
            'razonSocial'     => 'unique:clientes,razonSocial',
        ]);

        if($validacion->fails())
        {
            return response()->json([
               'status'  => false,
               'mensaje' => 'Hubo un problema en la validación.',
               'errores' => $validacion->errors()
            ],401);
        }

        $cliente->update($datos);
        return response()->json([
            'status'    => true,
            'mensaje'   => 'Cliente actualizado!!!',
        ],200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Cliente $cliente)
    {
        $cliente->delete();
        return response()->json([
            'message' => 'Cliente eliminado',
            ],200);
    }
}
