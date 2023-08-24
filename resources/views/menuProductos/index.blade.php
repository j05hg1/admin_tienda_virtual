{{-- Vista de Items Producto (font) --}}
@extends('layouts.app')

@section('content')

<div class="container">
    <div class="row">
        <div class="col-sm-3 bg-light">
            CARRITO
            @if (count(Cart::getContent()))
            <a href="{{ route('cart.checkout') }}"> VER CARRITO <span class="<span class="badge badge-danger">{{count(Cart::getContent())}}</span>"> </a>
            @endif
        </div>
        <div class="col-sm-9">
            <div class="row justify-content-center">
                @forelse ($productos as $item)
                <div class="col-4 border p-5 mt-5 text-center">
                    <h1>{{$item->nombre}}</h1>
                    <p>$ {{$item->precio}}</p>                    
                    <form action="{{ route('cart.add',$item->id) }}" method="POST">
                        @csrf
                        <input type="hidden" name="producto_id" value="{{$item->id}}">
                        <input type="submit" name="btn" class="btn btn-success" value="Añadir al Carrito">
                    </form>
                </div>
                @empty
                    
                @endforelse
            </div>
        </div>
    </div>
</div>

@endsection


{{-- <!-- resources/views/productos/index.blade.php -->

@extends('layouts.app')

@section('content')
<div class="container">
    <h1 class="my-4">Listado de Productos</h1>
    <div class="row">
        @foreach ($products as $product)
            <div class="col-md-4 mb-4">
                <div class="card">
                    <img src="{{ $product->image }}" class="card-img-top" alt="{{ $product->name }}">
                    <div class="card-body">
                        <h5 class="card-title">{{ $product->name }}</h5>
                        <p class="card-text">{{ $product->description }}</p>
                        <p class="card-text">Precio: ${{ $product->price }}</p>
                        <a href="#" class="btn btn-primary">Comprar</a>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
</div>
@endsection --}}
