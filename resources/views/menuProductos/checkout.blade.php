{{-- Vista de Items en carrito (checkout) --}}
@extends('layouts.app')

@section('content')

<div class="container">
    <div class="row">
        <div class="col-sm-12 bg-light">            
            <div class="card card-default">                
                <div class="card-header">
                    <span class="card-title my-4">CARRITO</span>                    
                </div>
                <div class="card-header">
                    <a class="btn btn-primary" href="{{ route('menuProductos.index') }}"> Añadir Producto</a>
                </div>
                @if (count(Cart::getContent()))
                {{-- Tabla para visualizar items del carrito --}}
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-striped table-hover">
                            <thead class="thead">
                                <tr>
                                    <th>ID</th>       
                                    <th>Nombre</th>
                                    <th>Precio Unitario</th>
                                    <th>Cantidad</th>    
                                    <th>Total</th>
                                    <th>Imagen</th>
                                    <th></th>                            
                                </tr>
                            </thead>
                            <tbody>
                                @foreach (Cart::getContent() as $item)
                                    <tr>
                                        <td>{{ $item->id }}</td>                                    
                                        <td>{{ $item->name }}</td>                                    
                                        <td>{{ $item->price }}</td>
                                        <td>{{ $item->quantity }}</td>                                                                        
                                        <td>{{ $item->price * $item->quantity }}</td>
                                        <td>
                                            <img src="{{ $item->img }}" width="100" class="img-responsive">
                                        </td>
    
                                        <td>
                                            <form action="{{ route('cart.removeitem') }}" method="POST">
                                                {{-- <a class="btn btn-sm btn-primary " href="{{ route('producto.show',$producto->id) }}"><i class="fa fa-fw fa-eye"></i> {{ __('Show') }}</a>
                                                <a class="btn btn-sm btn-success" href="{{ route('producto.edit',$producto->id) }}"><i class="fa fa-fw fa-edit"></i> {{ __('Edit') }}</a> --}}
                                                @csrf                   
                                                <input type="hidden" name="id" value="{{$item->id}}">                         
                                                <button type="submit" class="btn btn-danger btn-sm"><i class="fa fa-fw fa-trash"></i> {{ __('Retirar del Carrito') }}</button>
                                            </form>
                                        </td>
                                    </tr>
                                @endforeach
                                <tr>
                                </tr>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <td colspan="3" class="text-right"><strong>Total:</strong></td>
                                    <td>${{ Cart::getTotal() }}</td>
                                </tr>
                            </tfoot>
                        </table>
                        <div class="box box-info padding-1">
                            <div class="box-body">
                                <div class="box-footer mt20">
                                    <form action="{{ route('cart.checkout') }}" method="POST">
                                        @csrf
                                        <button type="submit" class="btn btn-success btn-sm"><i class="fa fa-fw fa-trash"></i>{{ __('Confirmar Compra') }}</button>
                                    </form>
                                </div>
                                <div class="box-footer mt20 py-2">      
                                    <form action="{{ route('cart.clear') }}" method="POST">
                                        @csrf
                                        <button type="submit" class="btn btn-danger btn-sm"><i class="fa fa-fw fa-trash"></i>{{ __('Cancelar Compra') }}</button>
                                        {{-- <a href="{{ route('cart.clear') }}" class="btn btn-danger btn-sm"><i class="fa fa-fw fa-trash"></i> {{ __('Cancelar Compra') }}</a> --}}
                                    </form>                              
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
    
                @else
                {{-- Si no hay items, se muestra el mensaje correspondiente --}}
                <p><h2>No tienes ningún producto agregado</h2><br/></p>
                @endif
            </div>
        </div>
        
    </div>
</div>

@endsection