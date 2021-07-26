@extends('layouts.app')
@section('content')

<div class="card card-statistics">
    <div class="card-body row ">

        <div class="col-md-2">
            <a href="javascript:history.back()" class="tooltip-wrapper" data-toggle="tooltip" data-placement="top"
                title="" data-original-title="Regresar">
                <i class="fa fa-reply text-info"></i>
            </a>
        </div>

        <div class="col-md-4">
            <h4 class="d-flex justify-content-center ">
                <i class="fa fa-car "> </i>
                <h5>
                    Informe Historial de km ingresados
                </h5>
            </h4>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-lg-12">
        <div class="card card-statistics">
            <div class="card-body">
                <div class="export-table-wrapper table-responsive">
                    <table class="table table-bordered " style="color:black" id="dataTablekmInforme" width="100%"
                        cellspacing="0">
                        <thead class="thead">
                            <tr>
                                <th>Placa</th>
                                <th>Tipo de Vehiculo</th>
                                <th>km Actual</th>
                                <th>Marca</th>
                                <th>Modelo</th>
                                <th>Download</th>
                            </tr>
                        <tbody>
                            @foreach ($vehiculos as $vehiculo)
                            <tr>
                                <td>{{$vehiculo->placa}}</td>
                                <td>{{$vehiculo->tipo_vehiculo}}</td>
                                <td>{{$vehiculo->km_actual}}</td>
                                <td>{{$vehiculo->marca}}</td>
                                <td>{{$vehiculo->modelo}}</td>
                                <th>
                                    <form action="{{route('historialkm.descargar')}}" method="get">
                                        @csrf
                                        <input type="hidden" name="vehiculo_id" value="{{$vehiculo->id}}">
                                        <input class="btn btn-sm btn-info" type="submit" value="Descargar">
                                    </form>
                                </th>
                            </tr>
                            @endforeach
                        </tbody>
                        </thead>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

@stop

@section('scripts')
<script type="application/javascript">
    $(document).ready(function() {
    $('#dataTablekmInforme').DataTable();
} );

</script>
@endsection