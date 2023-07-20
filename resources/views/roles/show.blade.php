@extends('layouts.app')

@section('template_title')
    {{ $user->name ?? "{{ __('Show') Roles" }}
@endsection

@section('content')
    <section class="content container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <div class="float-left">
                            <span class="card-title">{{ __('Show') }} Roles</span>
                        </div>
                        <div class="float-right">
                            <a class="btn btn-primary" href="{{ route('roles.index') }}"> {{ __('Volver') }}</a>
                        </div>
                    </div>

                    <div class="card-body">
                        
                        <div class="form-group">
                            <strong>Nombre:</strong>
                            {{ $role->name }}
                        </div>
                        <div class="form-group">
                            <strong>Permisos:</strong>                            
                            @if(!empty($rolePermissions))
                            @foreach($rolePermissions as $v)                        
                            <label class="label label-success">{{ $v->name }},</label>
                            @endforeach
                            @endif
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection