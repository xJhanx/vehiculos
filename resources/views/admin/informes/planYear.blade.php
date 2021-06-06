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
                    Informe Plan Mantenimientos
                </h5>
            </h4>
        </div>

        <div class="col-md-6">
            <form action="" method="get">
                @csrf
                <div class="row">
                    <div class="col">
                        <label for=""></label>
                    </div>
                    <div class="col-md-6">
                        <select class="form-control" data-live-search="true" name="year" id="year">
                            <option value="2019">2019</option>
                            <option value="2020">2020</option>
                            <option value="2021">2021</option>
                            <option value="2022">2022</option>
                            <option value="2023">2023</option>
                            <option value="2024">2024</option>
                            <option selected value="2025">2025</option>
                            <option value="2026">2026</option>
                            <option value="2027">2027</option>
                            <option value="2028">2028</option>
                            <option value="2029">2029</option>
                            <option value="2030">2030</option>
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
                    <table class="table table-bordered " style="color:black" id="dataTableInforme" width="100%"
                        cellspacing="0">
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
                                    <form action="{{route('reportePlan.individual')}}" method="get">
                                        @csrf
                                        <input type="hidden" name="vehiculo_id" value="{{$item->id}}">
                                        <select class="form-control" data-live-search="true" name="year" id="year">
                                            <option value="2019">2019</option>
                                            <option value="2020">2020</option>
                                            <option value="2021">2021</option>
                                            <option value="2022">2022</option>
                                            <option value="2023">2023</option>
                                            <option value="2024">2024</option>
                                            <option selected value="2025">2025</option>
                                            <option value="2026">2026</option>
                                            <option value="2027">2027</option>
                                            <option value="2028">2028</option>
                                            <option value="2029">2029</option>
                                            <option value="2030">2030</option>
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