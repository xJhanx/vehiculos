@extends('layouts.app')
@section('content')

<div class="ml-auto d-flex align-items-center secondary-menu text-center m-2">

    <a href="javascript:history.back()" class="tooltip-wrapper" data-toggle="tooltip" data-placement="top" title=""
        data-original-title="Regresar">
        <i class="fa fa-reply text-info"></i>
    </a>

    <a href="javascript:void(0)" class="tooltip-wrapper" data-toggle="modal" data-placement="top"
        data-target="#modalPropietarioRegister" title="Registrar">
        <i class="fa fa-edit btn btn-icon text-success"></i>
    </a>

    <h5 class="m-2">
        <i class="fa fa-group"></i> Propietarios
    </h5>

</div>

<div class="row">
    <div class="col-lg-12">
        <div class="card card-statistics">
            <div class="card-body">
                <div class="export-table-wrapper table-responsive">
                    <table class="table table-bordered" style="color:black" id="dataTablePropietarios" width="100%" cellspacing="0">
                        <thead class="thead">
                            <tr>
                                <th>S. No</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Direccion</th>
                                <th>Barrio</th>
                                <th>Ciudad</th>
                                <th>Departamento</th>
                                <th>Telefono</th>
                                <th></th>
                            </tr>
                        </thead>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

@include('admin.propietarios.partials.formUpdate')
@include('admin.propietarios.partials.formRegister')

@stop

@section('scripts')
<script src="{{ asset('/js/apiPropietario.js') }}"></script>
<script src="{{ asset('/js/propietarioListener.js') }}"></script>
@endsection
