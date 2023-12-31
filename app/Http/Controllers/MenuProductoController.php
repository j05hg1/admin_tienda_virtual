<?php

namespace App\Http\Controllers;

use App\Models\Producto;
use Illuminate\Http\Request;

/**
 * Class MenuProductoController
 * @package App\Http\Controllers
 */
class MenuProductoController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    function __construct()
    {
        $this->middleware('permission:producto-list|producto-create|producto-edit|producto-delete', ['only'=>['index','show']]);
        $this->middleware('permission:producto-create', ['only'=>['create','store']]);
        $this->middleware('permission:producto-edit', ['only'=>['edit','update']]);
        $this->middleware('permission:producto-delete', ['only'=>['destroy']]);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $productos = Producto::all();
        return view('menuProductos.index', compact('productos'));
        // $productos = Producto::latest()->paginate(5);
        
        // return view('menuProductos.index', compact('productos'))
        //     ->with('i', (request()->input('page', 1) - 1) * 5);
    }

    // /**
    //  * Show the form for creating a new resource.
    //  *
    //  * @return \Illuminate\Http\Response
    //  */
    // public function create()
    // {
    //     $producto = new Producto();
    //     return view('producto.create', compact('producto'));        
    // }

    // /**
    //  * Store a newly created resource in storage.
    //  *
    //  * @param  \Illuminate\Http\Request $request
    //  * @return \Illuminate\Http\Response
    //  */
    // public function store(Request $request)
    // {
    //     request()->validate([
    //         'nombre'=>'required',
    //         'img',
    //         'precio'=>'required',
    //         'disponibilidad'=>'required',
    //         'detalles'
    //     ]);

    //     Producto::create($request->all());

    //     return redirect()->route('producto.index')
    //         ->with('success', 'Producto creado satisfactoriamente!.');
    // }

    // /**
    //  * Display the specified resource.
    //  *
    //  * @param  int $id
    //  * @return \Illuminate\Http\Response
    //  */
    // public function show(Producto $producto)
    // {
    //     // $producto = Producto::find($id);

    //     return view('producto.show', compact('producto'));
    // }

    // /**
    //  * Show the form for editing the specified resource.
    //  *
    //  * @param  int $id
    //  * @return \Illuminate\Http\Response
    //  */
    // public function edit(Producto $producto)
    // {
    //     // $producto = Producto::find($id);

    //     return view('producto.edit', compact('producto'));
    // }

    // /**
    //  * Update the specified resource in storage.
    //  *
    //  * @param  \Illuminate\Http\Request $request
    //  * @param  Producto $producto
    //  * @return \Illuminate\Http\Response
    //  */
    // public function update(Request $request, Producto $producto)
    // {
    //     request()->validate([
    //         'nombre'=>'required',
    //         'img',
    //         'precio'=>'required',
    //         'disponibilidad'=>'required',
    //         'detalles'
    //     ]);

    //     $producto->update($request->all());

    //     return redirect()->route('producto.index')
    //         ->with('success', 'Producto actualizado satisfactoriamente!');
    // }

    // /**
    //  * @param int $id
    //  * @return \Illuminate\Http\RedirectResponse
    //  * @throws \Exception
    //  */
    // public function destroy(Producto $producto)
    // {
    //     $producto->delete();

    //     return redirect()->route('producto.index')
    //         ->with('success', 'Producto eliminado satisfactoriamente!');
    // }
 
}
