{{-- @extends('layouts.admin')

@section('contenido')
<div class="row">
<div class="col-lg-12 margin-tb">
<div class="pull-left">
<h2>Productos</h2>
</div>
<div class="pull-right">
@can('product-create')
<a class="btn btn-success" href="{{ route('producto.create') }}"> Crear Nuevo Producto</a>
@endcan
</div>
</div>
</div>


@if ($message = Session::get('success'))
<div class="alert alert-success">
<p>{{ $message }}</p>
</div>
@endif


<table class="table table-bordered">
<tr>
<th>No</th>
<th>Name</th>
<th>Details</th>
<th width="280px">Action</th>
</tr>
@foreach ($products as $product)
<tr>
<td>{{ ++$i }}</td>
<td>{{ $product->name }}</td>
<td>{{ $product->descripcion }}</td>
<td>
<form action="{{ route('productos.destroy',$product->id) }}" method="POST">
<a class="btn btn-info" href="{{ route('productos.show',$product->id) }}">Show</a>
@can('product-edit')
<a class="btn btn-primary" href="{{ route('productos.edit',$product->id) }}">Edit</a>
@endcan


@csrf
@method('DELETE')
@can('product-delete')
<button type="submit" class="btn btn-danger">Delete</button>
@endcan
</form>
</td>
</tr>
@endforeach
</table>


{!! $products->links() !!}


<p class="text-center text-primary"><small>Tutorial by TIC´SA.com</small></p>
@endsection --}}




@extends('layouts.app')

@section('template_title')
    Producto
@endsection

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <div style="display: flex; justify-content: space-between; align-items: center;">

                            <span id="card_title">
                                {{ __('Productos') }}
                            </span>

                             <div class="float-right">
                                <a href="{{ route('producto.create') }}" class="btn btn-primary btn-sm float-right"  data-placement="left">
                                  {{ __('Create New') }}
                                </a>
                              </div>
                        </div>
                    </div>
                    @if ($message = Session::get('success'))
                        <div class="alert alert-success">
                            <p>{{ $message }}</p>
                        </div>
                    @endif

                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered table-hover">
                                <thead class="thead">
                                    <tr>
                                        <th>No</th>
                                        
										<th>Nombre</th>
										<th>Img</th>
										<th>Precio</th>
										<th>Disponibilidad</th>
										<th>Detalles</th>

                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($productos as $producto)
                                        <tr>
                                            <td class="v-align-middle">{{ ++$i }}</td>
                                            
											<td class="v-align-middle">{{ $producto->nombre }}</td>
											<td class="v-align-middle">
                                                <img src="{!! asset("uploads/$producto->img") !!}" width="100" class="img-responsive">
                                            </td>
											<td class="v-align-middle">{{ $producto->precio }}</td>
											<td class="v-align-middle">{{ $producto->disponibilidad }}</td>
											<td class="v-align-middle">{{ $producto->detalles }}</td>

                                            <td class="v-align-middle">
                                                <form action="{{ route('producto.destroy',$producto->id) }}" method="POST">
                                                    <a class="btn btn-sm btn-primary " href="{{ route('producto.show',$producto->id) }}"><i class="fa fa-fw fa-eye"></i> {{ __('Show') }}</a>
                                                    <a class="btn btn-sm btn-success" href="{{ route('producto.edit',$producto->id) }}"><i class="fa fa-fw fa-edit"></i> {{ __('Edit') }}</a>
                                                    @csrf
                                                    @method('DELETE')
                                                    <button type="submit" class="btn btn-danger btn-sm"><i class="fa fa-fw fa-trash"></i> {{ __('Delete') }}</button>
                                                </form>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                {!! $productos->links() !!}
            </div>
        </div>
    </div>
@endsection
