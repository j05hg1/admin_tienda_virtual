@extends('layouts.app')

@section('template_title')
    {{ __('Update') }} Editar
@endsection


@section('content')     
        <section class="content container-fluid">
                <div class="">
                    <div class="col-md-12">
        
                        @includeif('partials.errors')

                        
                        <div class="card card-default">

                            <div class="card-header">                            
                                <span class="card-title">{{ __('Update') }} Roles</span>                            
                            </div>
                            <div class="card-header">
                                <a class="btn btn-primary" href="{{ route('roles.index') }}"> {{ __('Volver') }}</a>
                            </div>
                            <div class="card-body">
                                <form method="POST" action="{{ route('roles.update', $role->id) }}"  role="form" enctype="multipart/form-data">
                                    {{ method_field('PATCH') }}
                                    @csrf
        
                                    @include('roles.formedit')                                    
        
                                </form>
                            </div>
                        </div>                        
                    </div>
                </div>
            </section>
        @endsection