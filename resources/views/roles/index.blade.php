{{-- @extends('layouts.app')

      @section('contenido')
      <div class="row">
      <div class="col-lg-12 margin-tb">
      <div class="pull-left">
      <h2>Role Management</h2>
      </div>
      <div class="pull-right">
      @can('role-create')
      <a class="btn btn-success" href="{{ route('roles.create') }}"> Create New Role</a>
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
      <th width="280px">Action</th>
      </tr>

      @foreach ($roles as $key => $role)
      <tr>
      <td>{{ ++$i }}</td>
      <td>{{ $role->name }}</td>
      <td>
      <a class="btn btn-info" href="{{ route('roles.show',$role->id) }}">Show</a>
      @can('role-edit')
      <a class="btn btn-primary" href="{{ route('roles.edit',$role->id) }}">Edit</a>
      @endcan
      @can('role-delete')
      {!! Form::open(['method' => 'DELETE','route' => ['roles.destroy',
      $role->id],'style'=>'display:inline']) !!}
      {!! Form::submit('Delete', ['class' => 'btn btn-danger']) !!}
      {!! Form::close() !!}
      @endcan
      </td>
      </tr>
      @endforeach
      </table>


      {!! $roles->render() !!}


      <p class="text-center text-primary"><small>Tutorial by ticsacorporativo.com</small></p>
      @endsection --}}

{{-- Nuevo template --}}
@extends('layouts.app')

@section('template_title')
  Administración Roles
@endsection

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <div style="display: flex; justify-content: space-between; align-items: center;">

                            <span id="card_title">
                                {{ __('Administración Roles') }}
                            </span>

                             <div class="float-right">
                                <a href="{{ route('roles.create') }}" class="btn btn-primary btn-sm float-right"  data-placement="left">
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
                            <table class="table table-striped table-hover">
                                <thead class="thead">
                                    <tr>
                                        <th>No</th>
                                        
                                        <th>Nombre</th>
                                        <th>Acciones</th>

                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                  @foreach ($roles as $key => $role)
                                        <tr>
                                            <td>{{ ++$i }}</td>                                            
                                            <td>{{ $role->name }}</td>
                                            <td>
                                                <form action="{{ route('roles.destroy',$role->id) }}" method="POST">
                                                    <a class="btn btn-sm btn-primary " href="{{ route('roles.show',$role->id) }}"><i class="fa fa-fw fa-eye"></i> {{ __('Show') }}</a>
                                                    @can('role-edit')
                                                    <a class="btn btn-sm btn-success" href="{{ route('roles.edit',$role->id) }}"><i class="fa fa-fw fa-edit"></i> {{ __('Edit') }}</a>
                                                    @endcan
                                                    @csrf
                                                    @can('role-delete')
                                                    @method('DELETE')
                                                    <button type="submit" class="btn btn-danger btn-sm"><i class="fa fa-fw fa-trash"></i> {{ __('Delete') }}</button>
                                                    @endcan
                                                </form>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                {!! $roles->render() !!}
            </div>
        </div>
    </div>
@endsection