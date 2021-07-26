@extends('layouts.app')
@section('content')

@if (session('status'))

<div class="alert alert-success alert-dismissible fade show" role="alert">
    <strong>Excelente!</strong> {{ session('status') }}.
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>

@endif


<div class="content">
    <div class="ml-auto d-flex align-items-center secondary-menu text-center m-2">

        <a href="javascript:history.back()" class="tooltip-wrapper" data-toggle="tooltip" data-placement="top" title=""
            data-original-title="Regresar">
            <i class="fa fa-reply text-info"></i>
        </a>

        <h5 class="m-2">
            <i class="fa fa-car"></i> Actualizar km
        </h5>

    </div>

    @csrf
    <form id="formVehiculoRegister" method="POST" action="{{route('aggkm')}}">
        @csrf
        <div class="row">
            <div class="form-group col-md-12 d-flex justify-content-end">
                <button type="submit" name="insertar" class="btn btn-info btn-sm">Actualizar</button>
            </div>
        </div>

        @foreach ($vehiculos as $item)
        <div class="row">

            <div class="form-group col-md-6">
                <label class="text-dark" for="placa">Vehiculo</label>
                <input class="form-control" name="placa[]" placeholder="Placa del vehiculo" value="{{$item->placa}}" />
            </div>

            <div class="form-group col-md-6">
                <div class="form-group col-md-12">
                    <label class="text-dark" for="tipo">Fecha de Ingreso</label>
                    <input type="date" class="form-control" name="f_ingreso[]"
                        value=@if(isset($item->lavados) && !empty($item->lavados->last())){{$item->lavados->last()->f_ingreso}} @endif />
                </div>

                <div class=" form-group col-md-12">
                    <label class="text-dark" for="km_actualid">Km registrados</label>
                    <input class="form-control" name="km_actual[]" placeholder="Km actual" value="{{$item->km_actual}}"
                        onkeyup="puntitos(this,this.value.charAt(this.value.length-1))" />
                </div>

                <div class="form-group col-md-12">
                    <label class="text-dark" for="tipo">Observacion</label>
                    <textarea class="form-control" name="observacion[]" tag="observacion" cols="30"
                        rows="3">@if(isset($item->lavados) && !empty($item->lavados->last())){{$item->lavados->last()['observacion']}}@endif</textarea>
                </div>

            </div>
        </div>

        @endforeach
    </form>
</div>
@stop