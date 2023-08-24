{{-- Vista de Items Producto (font) --}}
{{-- @extends('layouts.app')

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

@endsection --}}


<!-- resources/views/productos/index.blade.php -->

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
        <h1 class="my-4">Menu Productos</h1>
        <div class="row">
            @foreach ($productos as $item)
                <div class="col-md-4 mb-4">
                    <div class="card">
                        {{-- <img src="{{ $item->image }}" class="card-img-top" alt="{{ $item->nombre }}"> --}}
                        <div class="card-body">
                            <h5 class="card-title"><strong>{{ $item->nombre }}</strong></h5>
                            {{-- <p class="card-text">{{ $item->detalles }}</p> --}}
                            <p class="card-text"><strong>Precio: ${{ $item->precio }}</strong></p>
                            <form action="{{ route('cart.add',$item->id) }}" method="POST">
                            @csrf
                            <input type="hidden" name="producto_id" value="{{$item->id}}">
                            <input type="submit" name="btn" class="btn btn-success" value="Añadir al Carrito">
                        </form>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
</div>
@endsection
