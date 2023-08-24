{{-- Vista de Items en carrito (checkout) --}}
@extends('layouts.app')

@section('content')

<div class="container">
    <div class="row">
        <div class="col-sm-3 bg-light">
            CARRITO
            @if (count(Cart::getContent()))
            <a href="{{ route('cart.checkout') }}"> VER CARRITO <span class="<span class="badge badge-danger">{{count(Cart::getContent())}}</span>"> </a>
            @else
            {{-- Si no hay items, se muestra el mensaje correspondiente --}}
            <h2>No tienes ningún producto agregado</h2><br/>
            @endif
        </div>
        
    </div>
</div>

@endsection