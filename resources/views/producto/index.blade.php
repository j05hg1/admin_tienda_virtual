{{-- Vista admin tabla productos --}}
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
                            <table class="table table-bordered table-striped table-hover">
                                <thead class="thead">
                                    <tr>
                                        <th>No</th>
                                        
										<th>Nombre</th>
										<th>Img</th>
										<th>Precio</th>
										<th>Disponibilidad</th>
										<th>Detalles</th>
                                        <th>Acciones</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($productos as $producto)
                                        <tr>
                                            <td>{{ ++$i }}</td>
                                            
											<td>{{ $producto->nombre }}</td>
											<td>
                                                <img src="{{ $producto->img }}" width="100" class="img-responsive">
                                                {{-- <img src="{!! asset("uploads/$producto->img") !!}" width="100" class="img-responsive"> --}}
                                            </td>
											<td>{{ $producto->precio }}</td>
											<td>{{ $producto->disponibilidad }}</td>
											<td>{{ $producto->detalles }}</td>

                                            <td>
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
                <div class="pagination d-flex justify-content-center">                    
                    <!-- Genera los enlaces de paginación -->
                    {{-- {{ $products->links() }}  --}}
                    {!! $productos->links() !!}
                </div>
            </div>
        </div>
    </div>
@endsection
@push('styles')
    <style>
        .table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        
        .table th, .table td {
            padding: 10px;
            text-align: left;
        }
        
        .table th {
            background-color: #f0f0f0;
            font-weight: bold;
        }
        
        .table-bordered th, .table-bordered td {
            border: 1px solid #ddd;
        }
        
        .table-striped tbody tr:nth-of-type(odd) {
            background-color: #f9f9f9;
        }
        
        .pagination {
            margin-top: 20px;
        }
    </style>
@endpush