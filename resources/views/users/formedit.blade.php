<div class="box box-info padding-1">
    <div class="box-body">
        
        <div class="form-group">
            <strong>
                {{ Form::label('name') }}
            </strong>
            {{ Form::text('name', $user->name, ['class' => 'form-control' . ($errors->has('name') ? ' is-invalid' : ''), 'placeholder' => 'Nombre']) }}
            {!! $errors->first('name', '<div class="invalid-feedback">:message</div>') !!}
        </div>
        <div class="form-group">
            <strong>
                {{ Form::label('email') }}
            </strong>
            {{-- {!! Form::text('email', null, array('placeholder' => 'Email','class' => 'form-control')) !!} --}}
            {{ Form::text('email', $user->email, ['class' => 'form-control' . ($errors->has('email') ? ' is-invalid' : ''), 'placeholder' => 'Email']) }}
            {!! $errors->first('email', '<div class="invalid-feedback">:message</div>') !!}
        </div>
        <div class="form-group">
            <strong>
                {{ Form::label('password') }}
            </strong>
            {{ Form::password('password', ['class' => 'form-control' . ($errors->has('password') ? ' is-invalid' : ''), 'placeholder' => 'Contraseña']) }}
            {!! $errors->first('password', '<div class="invalid-feedback">:message</div>') !!}
        </div>
        <div class="form-group">
            <strong>
                {{ Form::label('confirm-password') }}
            </strong>
            {{ Form::password('confirm-password', ['class' => 'form-control' . ($errors->has('confirm-password') ? ' is-invalid' : ''), 'placeholder' => 'Confirmar Contraseña']) }}
            {!! $errors->first('confirm-password', '<div class="invalid-feedback">:message</div>') !!}
        </div>
        <div class="form-group">
            <strong>
                {{ Form::label('roles') }}
            </strong>            
            {{-- {!! Form::select('roles[]', $roles,$userRole, array('class' => 'form-control','multiple')) !!} --}}
            {{ Form::select('roles[]', $roles, $userRole, ['class' => 'form-control', 'multiple' . ($errors->has('roles[]') ? ' is-invalid' : ''), 'placeholder' => 'Selecciona un Rol']) }}
            {!! $errors->first('roles', '<div class="invalid-feedback">:message</div>') !!}
        </div>

    </div>
    <div class="box-footer mt20">
        <button type="submit" class="btn btn-primary">{{ __('Submit') }}</button>
    </div>
</div>