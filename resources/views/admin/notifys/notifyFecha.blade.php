@extends('layouts.app')
@section('content')

<div class="ml-auto d-flex align-items-center secondary-menu text-center m-2">

    <a href="javascript:history.back()" class="tooltip-wrapper" data-toggle="tooltip" data-placement="top" title=""
        data-original-title="Regresar">
        <i class="fa fa-reply text-info"></i>
    </a>

    <h5 class="m-2">
        <i class="fa fa-calendar"></i> Proximos vencimientos
    </h5>

</div>

<div class="row">
    <div class="col-lg-12">
        <div class="card card-statistics">
            <div class="card-body">
                <table class="" width="100%" cellspacing="0">
                    <th><i class="fa fa-circle text-info fa-2x"></i>
                        <p class="text-uppercase d-block mt-1"> Tarjeta </p>
                    </th>
                    <th><i class="fa fa-genderless text-info fa-2x"></i>
                        <p class="text-uppercase d-block mt-1">Tecnomecanica </p>
                    </th>
                    <th><i class="fa fa-genderless text-success fa-2x"></i>
                        <p class="text-uppercase d-block mt-1">Soat </p>
                    </th>
                    <th><i class="fa fa-circle text-danger fa-2x"></i>
                        <p class="text-uppercase d-block mt-1">Poliza todo riesgo</p>
                    </th>
                    <th><i class="fa fa-circle text-warning fa-2x"></i>
                        <p class="text-uppercase d-block mt-1">Poliza contractual</p>
                    </th>
                    <th><i class="fa fa-genderless text-warning fa-2x"></i>
                        <p class="text-uppercase d-block mt-1">Poliza extra</p>
                    </th>
                </table>
            </div>
        </div>
    </div>
</div>


<div class="row">
    <div class="col-lg-12">
        <div class="card card-statistics">
            <div class="card-body">
                <div class="export-table-wrapper table-responsive">
                    <table class="table table-bordered" style="color:black" id="dataTableNotifysFecha" width="100%"
                        cellspacing="0">
                        <thead class="thead">
                            <th>S. No</th>
                            <th>Vehiculo</th>
                            <th>Tarjeta</th>
                            <th>Tecnomecanica</th>
                            <th>Soat</th>
                            <th>Poliza Todo Riesgo</th>
                            <th>Poliza contractual</th>
                            <th>Poliza extra</th>
                            <th>Extintor</th>
                        </thead>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@stop

@section('scripts')
<script src="{{ asset('/js/apiNotifyFecha.js') }}"></script>
@endsection