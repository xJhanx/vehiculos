@extends('layouts.app')
@section('content')

<div class="ml-auto d-flex align-items-center secondary-menu text-center m-2">

    <a href="javascript:history.back()" class="tooltip-wrapper" data-toggle="tooltip" data-placement="top" title=""
        data-original-title="Regresar">
        <i class="fa fa-reply text-info"></i>
    </a>

    <a href="javascript:void(0)" class="tooltip-wrapper" data-toggle="modal" data-placement="top"
        data-target="#modalElementoRegister" title="Registrar">
        <i class="fa fa-edit btn btn-icon text-success"></i>
    </a>

    <h5 class="m-2">
        <i class="fa fa-asterisk"></i> Kits del vehiculo
    </h5>

</div>

<div class="row">
    <div class="col-lg-12">
        <div class="card card-statistics">
            <div class="card-body">
                <table class="" width="100%" cellspacing="0">
                    <th><i class="fa fa-circle text-info font-26"></i>
                        <p class="text-uppercase d-block mt-1"> Seguridad </p>
                    </th>
                    <th><i class="fa fa-circle text-success font-26"></i>
                        <p class="text-uppercase d-block mt-1">Ambiental </p>
                    </th>
                    <th><i class="fa fa-circle text-danger font-26"></i>
                        <p class="text-uppercase d-block mt-1">Botiquin </p>
                    </th>
                    <th><i class="fa fa-circle text-warning font-26"></i>
                        <p class="text-uppercase d-block mt-1">Kit de carretera</p>
                    </th>
                    <th><i class="fa fa-circle text-muted font-26"></i>
                        <p class="text-uppercase d-block mt-1">Herramienta</p>
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
                    <table class="table table-bordered" style="color:black" id="dataTableElementos" width="100%"
                        cellspacing="0">
                        <thead class="thead">
                            <th>S. No</th>
                            <th>Tipo</th>
                            <th>Descripcion</th>
                            <th>Cantidad</th>
                            <th>Observacion</th>
                            <th></th>
                        </thead>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

@include('admin.elementos.partials.formElementoUpdate')
@include('admin.elementos.partials.formElementoRegister')


@stop
@section('scripts')
<script>
    let vehiculo = @JSON($vehiculo->id);
</script>
<script src="{{ asset('/js/apiElementos.js') }}"></script>
@endsection