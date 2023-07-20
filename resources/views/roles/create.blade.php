@extends('layouts.app')

@section('template_title')
    {{ __('Create') }} Roles
@endsection

@section('content')
    <section class="content container-fluid">
        <div class="row">
            <div class="col-md-12">

                @includeif('partials.errors')

                <div class="card card-default">
                    <div class="card-header">
                        <span class="card-title">{{ __('Create') }} Roles</span>
                    </div>
                    <div class="card-header">
                        <a class="btn btn-primary" href="{{ route('roles.index') }}"> {{ __('Volver') }}</a>
                    </div>
                    <div class="card-body">
                        <form method="POST" action="{{ route('roles.store') }}"  role="form" enctype="multipart/form-data">
                            @csrf

                            @include('roles.formcreate')

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection