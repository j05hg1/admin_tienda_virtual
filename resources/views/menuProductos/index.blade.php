@extends('layouts.app')

{{-- @section('template_title')
    {{ __('Create') }} Producto
@endsection --}}

@section('content')

<div class="container">
    <div class="row">
    @forelse ($productos as $item)
        <div class="col-4 border p-5 mt-5 text-center">
            <h1>{{$item->nombre}}</h1>
            <p>$ {{$item->precio}}</p>
            <form action="">

            </form>
        </div>
    @empty
        
    @endforelse
    </div>
</div>

@endsection