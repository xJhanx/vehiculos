@extends('layouts.app')
@section('content')

@if(Session::has('flash_message'))
<div class="row">
    <div class="col-12 mb-2">
        <div class="alert alert-info alert-icon" role="alert">
            <i class="fa fa-info-circle"></i> {{Session::get('flash_message')}}
        </div>
    </div>
</div>
@endif

<div class="ml-auto d-flex align-items-center secondary-menu text-center m-2">

    <a href="javascript:history.back()" class="tooltip-wrapper" data-toggle="tooltip" data-placement="top" title=""
        data-original-title="Regresar">
        <i class="fa fa-reply text-info"></i>
    </a>

    <a href="javascript:void(0)" class="tooltip-wrapper" data-toggle="modal" data-placement="top"
        data-target="#modalRecomendacionRegister" title="subir">
        <i class="fa fa-edit btn btn-icon text-success"></i>
    </a>

</div>

@include('admin.recomendaciones.formRecomendacionRegister')
@include('admin.recomendaciones.formRecomendacionUpdate')


<div class="row" id="recomendaciones">
    <div class="col-lg-12">
        <div class="card card-statistics">
            <div class="card-body">
                <div class="card card-statistics">
                    <div class="card-body">
                        <p class="text text-info"> Km actual ::
                            <small class="font-weight-bold" style="font-size:1.1em">
                                {{$vehiculo->km_actual}} kilometros
                            </small>
                        </p>
                    </div>
                </div>
                <div class="export-table-wrapper table-responsive">
                    <table class="table table-bordered dt-responsive nowrap mb-0" style="color:black"
                        id="dataTableRecomendaciones" width="100%" cellspacing="0">
                        <thead class="thead">
                            <th>Autoparte</th>
                            <th style="width: 10px">Prioridad</th>
                            <th>km Programado </th>
                            <th>Programado </th>
                            <th>Km Ste </th>
                            <th>Fecha Ste </th>
                            <th>Estado</th>
                            <th>Fuente</th>
                            <th>observacion</th>
                            <th>Programados</th>
                            <th>Ejecutados</th>

                        </thead>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

@stop

@section('scripts')
<script>
    const vehiculo = @JSON($vehiculo-> id)
</script>
<script src="{{ asset('/js/apiRecomendaciones.js') }}"></script>

<script>
    $('.select-modalRecomendacionRegister').select2({
        dropdownParent: $("#modalRecomendacionRegister"),
        theme: "classic",
        width: '100%',
    });   
</script>


@stop