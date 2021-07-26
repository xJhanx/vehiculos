@extends('layouts.app')
@section('content')

<div class="ml-auto d-flex align-items-center secondary-menu text-center m-2">

    <a href="javascript:history.back()" class="tooltip-wrapper" data-toggle="tooltip" data-placement="top" title=""
        data-original-title="Regresar">
        <i class="fa fa-reply text-info"></i>
    </a>
    
    @can('isDesignado')

    <a href="{{url('register-service')}}" class="tooltip-wrapper" data-placement="top" title="Registrar">
        <i class="fa fa-edit btn btn-icon text-success"></i>
    </a>

    @endcan
    
    <h5 class="m-2">
                <i class="fa fa-group"></i> Solicitud de servicios.
    </h5>

</div>

<div class="row">
    <div class="col-lg-12">
        <div class="card card-statistics">
            <div class="card-body">
                <div class="export-table-wrapper table-responsive">
                    <table class="table table-bordered " style="color:black" id="dataTableServicios" width="100%"
                        cellspacing="0">
                        <thead class="thead">
                            <tr>
                                <th>S. No</th>
                                <th>Fecha Solicitado</th>
                                <th>Fecha Programdo</th>
                                <th>Empresa</th>
                                <th>Nit Empresa</th>
                                <th>Punto inicio</th>
                                <th>Punto fin </th>
                                <th>Estado</th>
                                <th>Observaiones</th>
                                <th></th>
                            </tr>
                        </thead>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

@stop

@section('scripts')
<script src="{{ asset('/js/apiSolicitud.js') }}"></script>
<script defer src="{{ asset('/js/solicitudesListener.js') }}"></script>
@endsection