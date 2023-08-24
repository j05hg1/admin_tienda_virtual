{{-- Vista de Items en carrito (checkout) --}}
@extends('layouts.app')

@section('content')

<div class="container">
    <div class="row">
        <div class="col-sm-12 bg-light">
            CARRITO
            @if (count(Cart::getContent()))
            {{-- Tabla para visualizar items del carrito --}}
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-striped table-hover">
                        <thead class="thead">
                            <tr>
                                <th>ID</th>                                
                                <th>Nombre</th>
                                <th>Precio</th>
                                <th>Cantidad</th>                                
                            </tr>
                        </thead>
                        <tbody>
                            @foreach (Cart::getContent() as $item)
                                <tr>
                                    <td>{{ $item->id }}</td>                                    
                                    <td>{{ $item->name }}</td>                                    
                                    <td>{{ $item->price }}</td>
                                    <td>{{ $item->quantity }}</td>                                    

                                    {{-- <td>
                                        <form action="{{ route('producto.destroy',$producto->id) }}" method="POST">
                                            <a class="btn btn-sm btn-primary " href="{{ route('producto.show',$producto->id) }}"><i class="fa fa-fw fa-eye"></i> {{ __('Show') }}</a>
                                            <a class="btn btn-sm btn-success" href="{{ route('producto.edit',$producto->id) }}"><i class="fa fa-fw fa-edit"></i> {{ __('Edit') }}</a>
                                            @csrf
                                            @method('DELETE')
                                            <button type="submit" class="btn btn-danger btn-sm"><i class="fa fa-fw fa-trash"></i> {{ __('Delete') }}</button>
                                        </form>
                                    </td> --}}
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>

            @else
            {{-- Si no hay items, se muestra el mensaje correspondiente --}}
            <p><h2>No tienes ningún producto agregado</h2><br/></p>
            @endif
        </div>
        
    </div>
</div>

@endsection