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

    /**
     * Funcion add para añadir los productos al carrito
     *
     * @param Request $request
     * @return void
     */
    public function add(Request $request)
    {
        $producto = Producto::find($request->producto_id);
        // Añade el producto al carrito
        Cart::add(
            $producto->id,
            $producto->nombre,
            $producto->precio,            
            1,            
            // array("urlfoto" => $producto->urlfoto)
            array("img" => $producto->img)
        );
        // Se queda en la misma vista o regresa
        return back()->with('success', "$producto->nombre !Se ha agregado con éxito al carrito!");
    }

    /**
     * Funcion cart para visualizar los productos que se han añadido al carrito
     *
     * @return void
     */
    public function cart() 
    {
        $params = [
            'title' => 'Shopping Cart Checkout',
        ];
        return view('menuProductos.checkout')->with($params);
    }

    /**
     * Funcion removeitem la cual eliminará por id del producto disminuyendo la cantidad o en su totalidad
     *
     * @param Request $request
     * @return void
     */
    public function removeitem(Request $request) 
    {        
        // $producto = Producto::where('id', $request->id)->firstOrFail();
        Cart::remove([
            // 'id' => $producto->id,
            'id' => $request->id,
        ]);
        return back()->with('success', "!Se ha eliminado el producto con éxito del carrito!");
    }
    /**
     * Funcion clear para limpiar todo lo que contenga el carrito a modo de cancelar
     *
     * @return void
     */
    public function clear()
    {
        Cart::clear();
        return back()->with('success', "!Se ha limpiado con éxito el carrito!");
    }

    /**
     * Funcion checkout para visualizar el total de los productos incluidos en el carrito
     *
     * @return void
     */
    public function checkout()
    {
        $cartItems = Cart::getContent();
        $totalPrice = Cart::getTotal();

        return view('menuProductos.checkout', compact('cartItems', 'totalPrice'));
    }

}
