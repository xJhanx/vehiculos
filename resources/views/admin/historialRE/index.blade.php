@extends('layouts.app')
@section('content')

<div class="ml-auto d-flex align-items-center secondary-menu text-center m-2">

    <a href="javascript:history.back()" class="tooltip-wrapper" data-toggle="tooltip" data-placement="top" title=""
        data-original-title="Regresar">
        <i class="fa fa-reply text-info"></i>
    </a>

    <h5 class="m-2">
        <i class="fa fa-calendar"></i> Plan de Matenimientos
    </h5>

</div>

<input type="hidden" name="recomendacion_id" id="recomendacion_id" value="{{$recomendacion->id}}">

<div class="row">
    <div class="col-lg-12">
        <div class="card card-statistics">
            <div class="card-body">
                <div class="export-table-wrapper table-responsive">
                    <table class="table table-bordered" style="color:black" id="dataTableHistorialRE" width="100%"
                        cellspacing="0">
                        <thead class="thead">
                            <th>Autoparte</th>
                            <th>Prioridad</th>
                            <th>Frecuencia</th>
                            <th>Fuente</th>
                            <th>km</th>
                            <th>estado</th>
                            <th>Fecha Programado</th>
                            <th>Fecha Ejecutado</th>
                            <th>Observacion</th>
                            <th></th>
                        </thead>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@stop

@section('scripts')
<script src="{{ asset('/js/apiHistorialRE.js') }}"></script>
@endsection