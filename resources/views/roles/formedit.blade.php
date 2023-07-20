<div class="box box-info padding-1">
    <div class="box-body">
        
        <div class="form-group">
            <strong>
            {{ Form::label('name') }}
            </strong>
            {{ Form::text('name', null, ['class' => 'form-control' . ($errors->has('name') ? ' is-invalid' : ''), 'placeholder' => 'Nombre']) }}
            {!! $errors->first('name', '<div class="invalid-feedback">:message</div>') !!}
        </div>
        
        <div class="form-group">
            <strong>
            {{ Form::label('permission') }}
            </strong>
            <br/>
            @foreach($permission as $value)
            {{ Form::checkbox('permission[]', $value->id, in_array($value->id, $rolePermissions) ? true : false, array('class' => 'name')) }}
            {{ $value->name }}
            <br/>
            @endforeach            
        </div>

    </div>
    <div class="box-footer mt20">
        <button type="submit" class="btn btn-primary">{{ __('Submit') }}</button>
    </div>
</div>