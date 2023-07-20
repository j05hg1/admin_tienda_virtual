<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Class Producto
 *
 * @property $id
 * @property $nombre
 * @property $img
 * @property $precio
 * @property $disponibilidad
 * @property $detalles
 * @property $created_at
 * @property $updated_at
 * @property $deleted_at
 *
 * @package App
 * @mixin \Illuminate\Database\Eloquent\Builder
 */
class Producto extends Model
{
    // use SoftDeletes;
    
    // static $rules = [
		// 'nombre' => 'required',
		// 'img' => 'required',
		// 'precio' => 'required',
		// 'disponibilidad' => 'required',
		// 'detalles' => 'required',
    // ];

    // protected $perPage = 20;

    use HasFactory;

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    //Instancio la tabla Productos
    // protected $table = 'productos';

     //Declaro los campos a usar de la tabla Productos
    protected $fillable = ['nombre','img','precio','disponibilidad','detalles'];



}
