{{-- Vista de pedidos del carrito (pedido) --}}
@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Pedidos</h1>
    <table class="table">
        <thead>
            <tr>
                <th>Número de Pedido</th>
                <th>Fecha</th>
                <th>Total</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($pedidos as $pedido)
                <tr>
                    <td>{{ $pedido->numero_pedido }}</td>
                    <td>{{ $pedido->created_at }}</td>
                    <td>${{ $pedido->total }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endsection
