@extends('layouts.app')
@section('content')

<div class="ml-auto d-flex align-items-center secondary-menu text-center m-2">

    <a href="javascript:history.back()" class="tooltip-wrapper" data-toggle="tooltip" data-placement="top" title="" data-original-title="Regresar">
        <i class="fa fa-reply text-info"></i>
    </a>

    <h5 class="m-2" >
        <i class="fa fa-book"></i> Documentacion
    </h5>

</div>

<div class="row">
    <div class="col-lg-12">
        <div class="card card-statistics">
            <div class="card-body">
                <div class="export-table-wrapper table-responsive">
                    <table class="table table-bordered " style="color:black" id="dataTableDocumentos" width="100%" cellspacing="0">
                        <thead class="thead">
                                <th>S. No</th>
                                <th>Propietario</th>
                                <th>Placa</th>
                                <th>Marca</th>
                                <th>Modelo</th>
                                <th>Estado</th>
                        </thead>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@stop

@section('scripts')
<script src="{{ asset('/js/apiDocumentos.js') }}"></script>
@endsection



