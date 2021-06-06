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
                <i class="fa fa-car "> </i> Informe Mensual
            </h4>
        </div>

        <div class="col-md-6">
            <form action="{{route('reporte.global_mes')}}" method="get">
                @csrf
                <div class="row">
                    <div class="col">
                        <label for=""></label>
                    </div>
                    <div class="col-md-6">
                        <select  class="form-control" data-live-search="true" name="mes" id="mes">
                            <option value="1">Enero</option>
                            <option value="2">Febreo</option>
                            <option value="3">Marzo</option>
                            <option value="4">Abril</option>
                            <option value="5">Mayo</option>
                            <option value="6">Junio</option>
                            <option value="7">Julio</option>
                            <option value="8">Agosto</option>
                            <option value="9">Septiembre</option>
                            <option value="10">Octubre</option>
                            <option value="11">Noviembre</option>
                            <option value="12">Diciembre</option>
                        </select>
                    </div>
                    <div class="col">
                        <input class="btn btn-sm btn-info" type="submit" value="Descargar">
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-lg-12">
        <div class="card card-statistics">
            <div class="card-body">
                <div class="export-table-wrapper table-responsive">
                    <table class="table table-bordered " style="color:black" id="dataTableInforme" width="100%" cellspacing="0">
                        <thead class="thead">
                            <tr>
                                <th>S. No</th>
                                <th>Placa</th>
                                <th>Tipo de Vehiculo</th>
                                <th>km Actual</th>
                                <th>Marca</th>
                                <th>Modelo</th>
                                <th>Download</th>
                            </tr>
                        <tbody>
                            @foreach ($vehiculos as $key => $item)
                            <tr>
                                <td>{{$key+1}}</td>
                                <td>{{$item->placa}}</td>
                                <td>{{$item->tipo_vehiculo}}</td>
                                <td>{{$item->km_actual}}</td>
                                <td>{{$item->marca}}</td>
                                <td>{{$item->modelo}}</td>
                                <th>
                                    <form action="{{route('reporte.mes')}}" method="get">
                                        @csrf
                                        <input type="hidden" name="vehiculo_id" value="{{$item->id}}">
                                        <select  class="form-control" data-live-search="true" name="mes"
                                            id="mes">
                                            <option value="1">Enero</option>
                                            <option value="2">Febreo</option>
                                            <option value="3">Marzo</option>
                                            <option value="4">Abril</option>
                                            <option value="5">Mayo</option>
                                            <option value="6">Junio</option>
                                            <option value="7">Julio</option>
                                            <option value="8">Agosto</option>
                                            <option value="9">Septiembre</option>
                                            <option value="10">Octubre</option>
                                            <option value="11">Noviembre</option>
                                            <option value="12">Diciembre</option>
                                        </select>
                                        <select  class="form-control" data-live-search="true" name="anio"
                                            id="anio">
                                            <option value="2018">2018</option>
                                            <option value="2019">2019</option>
                                            <option value="2020">2020</option>
                                            <option value="2021">2021</option>
                                            <option value="2022">2022</option>
                                            <option value="2023">2023</option>
                                            <option value="2024">2024</option>
                                            <option value="2025">2025</option>
                                           
                                        </select>
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
    $('#dataTableInforme').DataTable();
} );

</script>
@endsection