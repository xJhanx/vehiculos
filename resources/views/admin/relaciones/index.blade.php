@extends('layouts.app')
@section('content')

<div class="ml-auto d-flex align-items-center secondary-menu text-center m-2">

    <a href="javascript:history.back()" class="tooltip-wrapper" data-toggle="tooltip" data-placement="top" title=""
        data-original-title="Regresar">
        <i class="fa fa-reply text-info"></i>
    </a>

    <a href="javascript:void(0)" class="tooltip-wrapper" data-toggle="modal" data-placement="top"
        data-target="#modalRelacionRegister" title="Registrar">
        <i class="fa fa-edit btn btn-icon text-success"></i>
    </a>

    <h5 class="m-2">
        <i class="fa fa-asterisk"></i> Relacions
    </h5>

</div>

<div class="row">
    <div class="col-lg-12">
        <div class="card card-statistics">
            <div class="card-body">
                <div class="export-table-wrapper table-responsive">
                    <table class="table table-bordered" style="color:black" id="dataTableRelacions" width="100%" cellspacing="0">
                        <thead class="thead">
                            <th>S. No</th>
                            <th>Cargado en</th>
                            <th>Vehiculo</th>
                            <th>Autoparte</th>
                            <th>Cantidad</th>
                            <th></th>
                        </thead>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

@include('admin.relaciones.partials.formRelacionUpdate')
@include('admin.relaciones.partials.formRelacionRegister')


@stop
@section('scripts')
<script src="{{ asset('/js/apiRelacion.js') }}"></script>
@endsection
