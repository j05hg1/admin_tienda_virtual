<div class="box box-info padding-1">
    @if (!empty($producto->id))
    <!-- Formulario Actualizar -->
    <div class="box-body">
        <div class="form-group mb-3">
            {{ Form::label('nombre') }}
            {{ Form::text('nombre', $producto->nombre, ['class' => 'form-control' . ($errors->has('nombre') ? ' is-invalid' : ''), 'placeholder' => 'Nombre']) }}
            {!! $errors->first('nombre', '<div class="invalid-feedback">:message</div>') !!}
        </div>
        <div class="form-group mb-3">
            {{ Form::label('Seleccionar imagen') }}
            {{-- {{ Form::text('img', $producto->img, ['class' => 'form-control' . ($errors->has('img') ? ' is-invalid' : ''), 'placeholder' => 'Img']) }} --}}
            <br>
            {{ Form::file('img',  ['class' => 'form-control' . ($errors->has('img') ? ' is-invalid' : ''), 'placeholder' => 'Img']) }}
            {!! $errors->first('img', '<div class="invalid-feedback">:message</div>') !!}            
            @if (!empty($producto->img))
            {{-- Si el producto ya tiene una foto, se muestra la actual --}}
                <span>Imagen Actual: </span>                
                <br>
                <img src="{{ $producto->img }}" width="200" class="img-fluid">
            @else
            {{--                No hay ninguna imagen asociada al producto--}}
                <strong>Aún no se ha cargado una imagen para este producto</strong>
            @endif
        </div>
        <div class="form-group mb-3">
            {{ Form::label('precio') }}
            {{ Form::text('precio', $producto->precio, ['class' => 'form-control' . ($errors->has('precio') ? ' is-invalid' : ''), 'placeholder' => 'Precio']) }}
            {!! $errors->first('precio', '<div class="invalid-feedback">:message</div>') !!}
        </div>
        <div class="form-group mb-3">
            {{ Form::label('disponibilidad') }}
            {{ Form::text('disponibilidad', $producto->disponibilidad, ['class' => 'form-control' . ($errors->has('disponibilidad') ? ' is-invalid' : ''), 'placeholder' => 'Disponibilidad']) }}
            {!! $errors->first('disponibilidad', '<div class="invalid-feedback">:message</div>') !!}
        </div>
        <div class="form-group mb-3">
            {{ Form::label('detalles') }}
            {{ Form::text('detalles', $producto->detalles, ['class' => 'form-control' . ($errors->has('detalles') ? ' is-invalid' : ''), 'placeholder' => 'Detalles']) }}
            {!! $errors->first('detalles', '<div class="invalid-feedback">:message</div>') !!}
        </div>
    </div>
    @else
    <!-- Formulario Registrar -->
    <div class="box-body">
        <div class="form-group mb-3">
            {{ Form::label('nombre') }}
            {{ Form::text('nombre', $producto->nombre, ['class' => 'form-control' . ($errors->has('nombre') ? ' is-invalid' : ''), 'placeholder' => 'Nombre']) }}
            {!! $errors->first('nombre', '<div class="invalid-feedback">:message</div>') !!}
        </div>
        <div class="form-group mb-3">
            {{ Form::label('Seleccionar imagen') }}
            {{-- {{ Form::text('img', $producto->img, ['class' => 'form-control' . ($errors->has('img') ? ' is-invalid' : ''), 'placeholder' => 'Img']) }} --}}
            <br>
            {{ Form::file('img', $producto->img, ['class' => 'form-control' . ($errors->has('img') ? ' is-invalid' : ''), 'placeholder' => 'Img']) }}
            {!! $errors->first('img', '<div class="invalid-feedback">:message</div>') !!}            
        </div>
        <div class="form-group mb-3">
            {{ Form::label('precio') }}
            {{ Form::text('precio', $producto->precio, ['class' => 'form-control' . ($errors->has('precio') ? ' is-invalid' : ''), 'placeholder' => 'Precio']) }}
            {!! $errors->first('precio', '<div class="invalid-feedback">:message</div>') !!}
        </div>
        <div class="form-group mb-3">
            {{ Form::label('disponibilidad') }}
            {{ Form::text('disponibilidad', $producto->disponibilidad, ['class' => 'form-control' . ($errors->has('disponibilidad') ? ' is-invalid' : ''), 'placeholder' => 'Disponibilidad']) }}
            {!! $errors->first('disponibilidad', '<div class="invalid-feedback">:message</div>') !!}
        </div>
        <div class="form-group mb-3">
            {{ Form::label('detalles') }}
            {{ Form::text('detalles', $producto->detalles, ['class' => 'form-control' . ($errors->has('detalles') ? ' is-invalid' : ''), 'placeholder' => 'Detalles']) }}
            {!! $errors->first('detalles', '<div class="invalid-feedback">:message</div>') !!}
        </div>
    </div>
    @endif
    <div class="box-footer mt20">
        <button type="submit" class="btn btn-primary">{{ __('Submit') }}</button>
        <a href="{{ route('producto.index') }}" class="btn btn-warning">Cancelar</a>
    </div>
</div>