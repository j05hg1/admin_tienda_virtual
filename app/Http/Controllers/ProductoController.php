<?php

namespace App\Http\Controllers;

use App\Models\Producto;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

/**
 * Class ProductoController
 * @package App\Http\Controllers
 */
class ProductoController extends Controller
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
        // $producto = Producto::all();
        // $productos = Producto::paginate(5);
        $productos = Producto::latest()->paginate(5);
        
        return view('producto.index', compact('productos'))
            ->with('i', (request()->input('page', 1) - 1) * 5);
        // return view('producto.index', compact('productos'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $producto = new Producto();
        return view('producto.create', compact('producto'));        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // Instancio al modelo Productos que hace llamado a la tabla 'productos' de la Base de Datos
        $producto = new Producto();
        // Almacenamos la imagen en la carpeta publica especifica, esto lo veremos más adelante 
        $producto->img = $request->file('img')->store('/');

        request()->validate([
            'nombre'=>'required',
            'img',
            'precio'=>'required',
            'disponibilidad'=>'required',
            'detalles'
        ]);

        Producto::create($request->all());

        return redirect()->route('producto.index')
            ->with('success', 'Producto creado satisfactoriamente!.');
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show(Producto $producto)
    {
        //
        // $producto = Producto::find($id);
        return view('producto.show', compact('producto'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Producto $producto)
    {
        //
        // $producto = Producto::find($id);

        return view('producto.edit', compact('producto'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  Producto $producto
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Producto $producto)
    {
        //
        // $producto = Producto::find($id);
        // Recibo la imagen desde el formulario Actualizar
        if ($request->hasFile('img')) {
            $producto->img = $request->file('img')->store('/');
        }

        request()->validate([
            'nombre'=>'required',
            'img',
            'precio'=>'required',
            'disponibilidad'=>'required',
            'detalles'
        ]);

        $producto->update($request->all());

        return redirect()->route('producto.index')
            ->with('success', 'Producto actualizado satisfactoriamente!');
    }

    /**
     * @param int $id
     * @return \Illuminate\Http\RedirectResponse
     * @throws \Exception
     */
    public function destroy(Producto $producto, $id)
    {
        //
        // Indicamos el 'id' del registro que se va Eliminar
        $producto = Producto::find($id);
        // Elimino la imagen de la carpeta 'uploads', esto lo veremos más adelante
        $imagen = explode(",", $producto->img);
        Storage::delete($imagen);
        /* unlink("storage/" . $producto->img);*/

        $producto->delete();

        return redirect()->route('producto.index')
            ->with('success', 'Producto eliminado satisfactoriamente!');
    }
}
