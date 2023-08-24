<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

//Llamado a controladores
use App\Http\Controllers\HomeController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ProductoController;
use App\Http\Controllers\MenuProductoController;
use App\Http\Controllers\CartController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

#Rutas de Roles y Usuarios
Route::group(['middleware' => ['auth']], function(){
    #Lista roles y usuarios con CRUD
    Route::resource('roles', RoleController::class); 
    Route::resource('users', UserController::class);
    /* Vista Administracion Productos con CRUD */ 
    Route::resource('producto', ProductoController::class);
    /* Vista Menu Productos */
    Route::resource('menuProductos', MenuProductoController::class);
    /* Carrito de compras */
    Route::post('/cart-add', 'App\Http\Controllers\CartController@add')->name('cart.add');
    Route::get('/cart-checkout', 'App\Http\Controllers\CartController@cart')->name('cart.checkout');
    Route::post('/cart-clear', 'App\Http\Controllers\CartController@clear')->name('cart.clear');
    Route::post('/cart-removeitem', 'App\Http\Controllers\CartController@removeitem')->name('cart.removeitem');

    Route::resource('menuProductos/checkout', MenuProductoController::class);
    // Route::delete('/cart-remove/{id}', 'CartController@remove')->name('cart.remove');
});

