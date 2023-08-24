<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
// use Darryldecode\Cart\Cart;
use Cart;
use App\Models\Producto;

/**
 * Class CartController
 * @package App\Http\Controllers
 */
class CartController extends Controller
{

    public function add(Request $request)
    {
        $producto = Producto::find($request->producto_id);
        // Añade el producto al carrito
        Cart::add(
            $producto->id,
            $producto->nombre,
            $producto->precio,            
            1,            
            array("urlfoto" => $producto->urlfoto)
        );
        // Se queda en la misma vista o regresa
        return back()->with('success', "$producto->nombre !Se ha agregado con éxito al carrito!");
    }

    public function cart() 
    {
        $params = [
            'title' => 'Shopping Cart Checkout',
        ];
        return view('menuProductos.checkout')->with($params);
    }

    public function removeitem(Request $request) 
    {        
        // $producto = Producto::where('id', $request->id)->firstOrFail();
        Cart::remove([
            // 'id' => $producto->id,
            'id' => $request->id,
        ]);
        return back()->with('success', "!Se ha eliminado el producto con éxito del carrito!");
    }

    public function clear()
    {
        Cart::clear();
        return back()->with('success', "!Se ha limpiado con éxito el carrito!");
    }

}
