@extends('layouts.app')

@section('template_title')
    {{ __('Create') }} Usuario
@endsection     

@section('content')
    <section class="content container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <div class="float-left">
                            <span class="card-title">{{ __('Show') }} Usuario</span>
                        </div>
                        <div class="float-right">
                            <a class="btn btn-primary" href="{{ route('users.index') }}"> {{ __('Volver') }}</a>
                        </div>
                    </div>

                    <div class="card-body">
                        
                        <div class="form-group">
                            <strong>Nombre:</strong>
                            {{ $user->name }}
                        </div>
                        <div class="form-group">
                            <strong>Email:</strong>
                            {{ $user->email }}
                        </div>
                        <div class="form-group">
                            <strong>Roles:</strong>
                              @if(!empty($user->getRoleNames()))
                              @foreach($user->getRoleNames() as $v)
                              <strong class="">{{ $v }}</strong>
                              @endforeach
                              @endif
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection