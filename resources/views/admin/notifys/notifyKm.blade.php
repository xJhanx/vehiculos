@extends('layouts.app')
@section('content')

<div class="ml-auto d-flex align-items-center secondary-menu text-center m-2">

    <a href="javascript:history.back()" class="tooltip-wrapper" data-toggle="tooltip" data-placement="top" title=""
        data-original-title="Regresar">
        <i class="fa fa-reply text-info"></i>
    </a>

    <h5 class="m-2">
        <i class="fa fa-tachometer"></i> Proximos vencimientos
    </h5>

</div>

<div class="row">
    <div class="col-lg-12">
        <div class="card card-statistics">
            <div class="card-body">
                <div class="export-table-wrapper table-responsive">
                    <table class="table table-bordered" style="color:black" id="dataTableNotifysKm" width="100%" cellspacing="0">
                        <thead class="thead">
                            <th>S. No</th>
                            <th>Vehiculo</th>
                            <th>Alerta</th>
                            <th>km Actual</th>
                            <th>Frecuencia</th>
                            <th>km Siguiente</th>
                            <th>Accion</th>
                        </thead>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@stop

@section('scripts')
<script src="{{ asset('/js/apiNotifyKm.js') }}"></script>
@endsection