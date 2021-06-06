@extends('layouts.app')
@section('content')

<div class="content">
    <div class="ml-auto d-flex align-items-center secondary-menu text-center m-2">
        <a href="javascript:history.back()" class="tooltip-wrapper" data-toggle="tooltip" data-placement="top" title=""
            data-original-title="Regresar">
            <i class="fa fa-reply text-info"></i>
        </a>

        <a href="javascript:void(0)" class="tooltip-wrapper text-dark" data-target="#modalHallazgoRegister"
            data-toggle="modal" data-placement="top" title="" data-original-title="Registrar Hallazgo">
            <i class="fa fa-edit btn btn-icon text-success"></i>
        </a>

        <a href="javascript:void(0)" class="tooltip-wrapper text-dark" data-target="#modalDocumentacionRegister"
            data-toggle="modal" data-placement="top" title="" data-original-title="Subir Imagen">
            <i class="fa fa-upload text-dark"></i>
        </a>


        <a href='{{url("/descargas/cv/$vehiculo->id")}}' class="tooltip-wrapper text-dark ml-2" data-placement="top"
            title="" data-original-title="Bajar Hoja de vida">
            <i class="fa fa-download text-primary"></i>
        </a>

    </div>


    <div class="row justify-content-center">
        <div class="col-md-8 mb-5 mb-lg-0 text-center">

            @if ($vehiculo->perfil)
            <img class="card-img-top img-fluid img-responsive"
                src="{{ asset('img_perfiles/'. $vehiculo->perfil->img) }}" alt="...">

            <form action="{{route('perfils.destroy', [$vehiculo->perfil->id] )}}" method="POST">
                @method("DELETE")
                @csrf
                <button type="submit">


                    <i class="fa fa-trash text-danger"></i>

                </button>
            </form>
            <div class="card-body text-center py-3">
                <h6 class="card-title mb-0">vehiculo : {{$vehiculo->placa}} </h6>
            </div>
            @else
            <div class="card-body text-center py-3">
                <h6 class="card-title mb-0">Sin foto de vehiculo, por favor elija una. </h6>
            </div>
            @endif
        </div>

    </div>


    <div class=" bg-secondary row-fluid mt-2" style='cursor: pointer;' onClick="muestra_oculta('propietario')" title=""
        class="boton_mostrar ">
        <legend class=" text-center text-white text-md"><small style="font-weight:bold;">Información
                de Propietario</small>
        </legend>
    </div>

    <div class="row" id="propietario">
        <div class="col-lg-12">
            <div class="card card-statistics">
                <div class="card-body">
                    <div class="export-table-wrapper table-responsive">
                        <table class="table table-bordered" style="color:black" width="100%" cellspacing="0">
                            <thead class="thead">
                                <tr>
                                    <th>Nombre</th>
                                    <th>Email</th>
                                    <th>Tefono</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        {{ $vehiculo->propietario->fullname }}
                                    </td>
                                    <td>
                                        {{ $vehiculo->propietario->email }}
                                    </td>
                                    <td>
                                        {{ $vehiculo->propietario->telefono }}
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>


    @include('admin.hallazgos.formHallazgoRegister')
    @include('admin.hallazgos.formHallazgoUpdate')


    <div class=" bg-secondary row-fluid mt-2" style='cursor: pointer;' onClick="muestra_oculta('hallazgos')" title=""
        class="boton_mostrar ">
        <legend class=" text-center text-white text-md"><small style="font-weight:bold;">Hallazgos</small>
        </legend>
    </div>

    <div class="row" id="hallazgos">
        <div class="col-lg-12">
            <div class="card card-statistics">
                <div class="card-body">
                    <div class="export-table-wrapper table-responsive">
                        <table class="table table-bordered dt-responsive nowrap mb-0" style="color:black"
                            id="dataTableHallazgos" width="100%" cellspacing="0">
                            <thead class="thead">
                                <th>Nº</th>
                                <th>Fecha R</th>
                                <th>Observacion</th>
                                <th>Prioridad</th>
                                <th>Estado</th>
                                <th></th>
                            </thead>
                            <tbody class="bg-white text text-dark" style="font-size: 1.1rem;">
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class=" bg-secondary row-fluid mt-2" style='cursor: pointer;' onClick="muestra_oculta('informacion')" title=""
        class="boton_mostrar ">
        <legend class=" text-center text-white text-md"><small style="font-weight:bold;">
                Información del vehiculo </small>
        </legend>
    </div>

    <div class="row" id="informacion">
        <div class="col-lg-12">

            <div class="card card-statistics">
                <div class="card-body">
                    <p class="text text-info"> Km actual ::
                        <small class="font-weight-bold">
                            {{$vehiculo->km_actual}} kilometros
                        </small>
                    </p>
                </div>
            </div>


            <div class="card card-statistics">
                <div class="card-body">


                    <form id="formVehiculoUpdate" method="POST" action="{{route('vehiculos.update')}}">
                        @csrf
                        @method("PATCH")
                        <div class="row">

                            <div class="form-group col-md-6">
                                <label class="text-dark" for="propietario_id">Propietatio</label>
                                <select class="selectpicker form-control" data-live-search="true"=""
                                    name="propietario_id" tag="propietario_id">
                                    <option aria-readonly="true" value="{{$vehiculo->propietario_id}}">
                                        {{$vehiculo->propietario->fullname}}</option>
                                    {{-- @foreach ($propietarios as $item)
                                    <option value="{{$item->id}}">{{$item->fullname}}</option>
                                    @endforeach --}}
                                </select>
                            </div>


                            <div class="form-group col-md-3">
                                <label class="text-dark" for="placa">Placa</label>
                                <input type="text"="" name="placa" class="form-control" value="{{$vehiculo->placa}}">
                            </div>

                            <div class="form-group col-md-3">
                                <label class="text-dark" for="estado">Estado de vehiculo </label>
                                <select class="selectpicker form-control" data-live-search="true"="" name="estado"
                                    tag="estado">
                                    <option value="Activo" @if ($vehiculo->estado =="Activo" ) {{ 'selected' }}
                                        @endif>Activo
                                    </option>
                                    <option value="Inactivo" @if ($vehiculo->estado =="Inactivo" ) {{ 'selected' }}
                                        @endif>
                                        Inactivo</option>
                                </select>
                            </div>

                            <div class="form-group col-md-12">
                                <div class="bg-secondary row-fluid ">
                                    <legend class=" text-center text-white text-md" style="font-size:0.8em"><small
                                            style="font-weight:bold;"> ... </small></legend>
                                </div>
                            </div>


                            <div class="form-group col-md-4">
                                <label class="text-dark" for="tipo_vehiculo">Tipo de vehiculo </label>
                                <select class="selectpicker form-control" data-live-search="true"=""
                                    name="tipo_vehiculo" tag="tipo_vehiculo">

                                    <option value="Camioneta" @if ($vehiculo->tipo_vehiculo =="Camioneta" )
                                        {{ 'selected' }}
                                        @endif>
                                        Camioneta</option>

                                    <option value="Buseta" @if ($vehiculo->tipo_vehiculo =="Buseta" ) {{ 'selected' }}
                                        @endif>
                                        Buseta</option>
                                    <option value="Bus" @if ($vehiculo->tipo_vehiculo =="Bus" ) {{ 'selected' }}
                                        @endif>
                                        Bus</option>
                                    <option value="Microbus" @if ($vehiculo->tipo_vehiculo =="Microbus" )
                                        {{ 'selected' }}
                                        @endif>
                                        Microbus</option>
                                    <option value="Carrotanque" @if ($vehiculo->tipo_vehiculo =="Carrotanque" )
                                        {{ 'selected' }}
                                        @endif>
                                        Carrotanque</option>

                                    <option value="Maquinaria amarilla" @if ($vehiculo->tipo_vehiculo =="Maquinaria
                                        amarilla" )
                                        {{ 'selected' }}
                                        @endif>
                                        Maquinaria amarilla</option>

                                    <option value="Camion" @if ($vehiculo->tipo_vehiculo =="Camion" )
                                        {{ 'selected' }}
                                        @endif>
                                        Camión</option>
                                </select>

                            </div>


                            <div class="form-group col-md-4">
                                <label class="text-dark" for="marca">Marca</label>
                                <input type="text"="" name="marca" tag="marca" class="form-control"
                                    value="{{$vehiculo->marca}}">
                            </div>

                            <div class="form-group col-md-4">
                                <label class="text-dark" for="modelo">Modelo</label>
                                <input type="text"="" name="modelo" tag="modelo" class="form-control"
                                    value="{{$vehiculo->modelo}}">
                            </div>

                            <div class="form-group col-md-4">
                                <label class="text-dark" for="tipo_servicio">Tipo de servicio</label>
                                <select class="selectpicker form-control" data-live-search="true"=""
                                    name="tipo_servicio" tag="tipo_servicio">
                                    <option value="Publico" @if ($vehiculo->tipo_servicio =="Publico" )
                                        {{ 'selected' }}
                                        @endif>
                                        Publico</option>
                                    <option value="Particular" @if ($vehiculo->tipo_servicio =="Particular" )
                                        {{ 'selected' }}
                                        @endif>
                                        Particular</option>
                                </select>
                            </div>


                            <div class="form-group col-md-4">
                                <label class="text-dark" for="serie">Serie de vehiculo </label>
                                <input type="text"="" name="serie" tag="serie" class="form-control"
                                    value="{{$vehiculo->serie}}">
                            </div>

                            <div class="form-group col-md-4">
                                <label class="text-dark" for="cilindraje">Cilindraje</label>
                                <input type="text"="" name="cilindraje" tag="cilindraje" class="form-control"
                                    value="{{$vehiculo->cilindraje}}">
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark" for="color">Color</label>
                                <input type="text"="" name="color" tag="color" class="form-control"
                                    value="{{$vehiculo->color}}">
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark" for="tipo_combustible">Tipo de combustible</label>
                                <select class="selectpicker form-control  form-control"="" name="tipo_combustible"
                                    tag="tipo_combustible">
                                    <option value="Gasolina" @if ($vehiculo->tipo_combustible =="Gasolina" )
                                        {{ 'selected' }}
                                        @endif>
                                        Gasolina</option>
                                    <option value="Diesel" @if ($vehiculo->tipo_combustible =="Diesel" )
                                        {{ 'selected' }}
                                        @endif>
                                        Diesel</option>
                                </select>
                            </div>


                            <div class="form-group col-md-4">
                                <label class="text-dark" for="capacidad_pasajeros">Capacidad de Pasajeros</label>
                                <input type="text" name="capacidad_pasajeros" tag="capacidad_pasajeros"
                                    class="form-control" value="{{$vehiculo->capacidad_pasajeros}}">
                            </div>

                            <div class="form-group col-md-4">
                                <label class="text-dark" for="capacidad_litros">Capacidad en litros</label>
                                <input type="text" onkeyup="puntitos(this,this.value.charAt(this.value.length-1))"
                                    name="capacidad_litros" tag="capacidad_litros" class="form-control"
                                    value="{{$vehiculo->capacidad_litros}}">
                            </div>

                            <div class="form-group col-md-4">
                                <label class="text-dark" for="capacidad_toneladas">Capacidad en toneladas</label>
                                <input type="text" onkeyup="puntitos(this,this.value.charAt(this.value.length-1))"
                                    name="capacidad_toneladas" tag="capacidad_toneladas" class="form-control"
                                    value="{{$vehiculo->capacidad_toneladas}}">
                            </div>


                            <div class="form-group col-md-12">
                                <div class="bg-secondary row-fluid ">
                                    <legend class=" text-center text-white text-md" style="font-size:0.8em"><small
                                            style="font-weight:bold;"> ... </small></legend>
                                </div>
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark" for="numero_tarjeta_operaciones"># De Tarjeta
                                    Operaciones O Licencia</label>
                                <input type="text"="" name="numero_tarjeta_operaciones" tag="numero_tarjeta_operaciones"
                                    class="form-control" value="{{$vehiculo->numero_tarjeta_operaciones}}">
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark" for="vigencia_tarjeta_operaciones">Vencimiento</label>
                                <input type="date"="" name="vigencia_tarjeta_operaciones"
                                    tag="vigencia_tarjeta_operaciones" class="form-control"
                                    value="{{$vehiculo->vigencia_tarjeta_operaciones}}">
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark" for="numero_tecnomecanica"># De Tecnomecanica</label>
                                <input type="text"="" name="numero_tecnomecanica" tag="numero_tecnomecanica"
                                    class="form-control" value="{{$vehiculo->numero_tecnomecanica}}">
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark" for="vigencia_tecnomecanica">Vcto Tecnomecanica</label>
                                <input type="date"="" name="vigencia_tecnomecanica" tag="vigencia_tecnomecanica"
                                    class="form-control" value="{{$vehiculo->vigencia_tecnomecanica}}">
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark" for="numero_soat"># De Soat</label>
                                <input type="text"="" name="numero_soat" tag="numero_soat" class="form-control"
                                    value="{{$vehiculo->numero_soat}}">
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark" for="vigencia_soat">Vcto Soat</label>
                                <input type="date"="" name="vigencia_soat" tag="vigencia_soat" class="form-control"
                                    value="{{$vehiculo->vigencia_soat}}">
                            </div>


                            <div class="form-group col-md-12">
                                <div class="bg-secondary row-fluid ">
                                    <legend class=" text-center text-white text-md" style="font-size:0.8em"><small
                                            style="font-weight:bold;"> ... </small></legend>
                                </div>
                            </div>

                            <div class="form-group col-md-4">
                                <label class="text-dark" for="aseguradora_poliza_tr">Aseguradora Poliza todo Riesgo
                                </label>
                                <input type="text" name="aseguradora_poliza_tr" tag="aseguradora_poliza_tr"
                                    class="form-control" value="{{$vehiculo->aseguradora_poliza_tr}}">
                            </div>

                            <div class="form-group col-md-4">
                                <label class="text-dark" for="numero_poliza_tr"># Poliza todo Riesgo</label>
                                <input type="text" name="numero_poliza_tr" tag="numero_poliza_tr" class="form-control"
                                    value="{{$vehiculo->numero_poliza_tr}}">
                            </div>

                            <div class="form-group col-md-4">
                                <label class="text-dark" for="vigencia_poliza_tr">Vcto Poliza todo Riesgo</label>
                                <input type="date" name="vigencia_poliza_tr" tag="vigencia_poliza_tr"
                                    class="form-control" value="{{$vehiculo->vigencia_poliza_tr}}">
                            </div>


                            <div class="form-group col-md-4">
                                <label class="text-dark" for="aseguradora_poliza_ct">Aseguradora Poliza contractual
                                </label>
                                <input type="text" name="aseguradora_poliza_ct" tag="aseguradora_poliza_ct"
                                    class="form-control" value="{{$vehiculo->aseguradora_poliza_ct}}">
                            </div>

                            <div class="form-group col-md-4">
                                <label class="text-dark" for="numero_poliza_ct"># Poliza contractual</label>
                                <input type="text" name="numero_poliza_ct" tag="numero_poliza_ct" class="form-control"
                                    value="{{$vehiculo->numero_poliza_ct}}">
                            </div>

                            <div class="form-group col-md-4">
                                <label class="text-dark" for="vigencia_poliza_ct">Vcto Poliza contractual</label>
                                <input type="date" name="vigencia_poliza_ct" tag="vigencia_poliza_ct"
                                    class="form-control" value="{{$vehiculo->vigencia_poliza_ct}}">
                            </div>


                            <div class="form-group col-md-4">
                                <label class="text-dark" for="aseguradora_poliza_ex_ct">Aseguradora Poliza extra
                                </label>
                                <input type="text" name="aseguradora_poliza_ex_ct" tag="aseguradora_poliza_ex_ct"
                                    class="form-control" value="{{$vehiculo->aseguradora_poliza_ex_ct}}">
                            </div>

                            <div class="form-group col-md-4">
                                <label class="text-dark" for="numero_poliza_ex_ct"># Poliza extra contractual</label>
                                <input type="text" name="numero_poliza_ex_ct" tag="numero_poliza_ex_ct"
                                    class="form-control" value="{{$vehiculo->numero_poliza_ex_ct}}">
                            </div>

                            <div class="form-group col-md-4">
                                <label class="text-dark" for="vigencia_poliza_ex_ct">Vcto Poliza extra
                                    contractual</label>
                                <input type="date" name="vigencia_poliza_ex_ct" tag="vigencia_poliza_ex_ct"
                                    class="form-control" value="{{$vehiculo->vigencia_poliza_ex_ct}}">
                            </div>


                            <div class="form-group col-md-12">
                                <div class="bg-secondary row-fluid ">
                                    <legend class=" text-center text-white text-md" style="font-size:0.8em"><small
                                            style="font-weight:bold;"> ... </small></legend>
                                </div>
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark" for="gps">Plataforma GPS</label>
                                <select class="selectpicker form-control  form-control"="" name="gps" tag="gps">
                                    <option value="Si" @if ($vehiculo->gps =="Si" )
                                        {{ 'selected' }}
                                        @endif>
                                        Si</option>
                                    <option value="No" @if ($vehiculo->gps =="No" )
                                        {{ 'selected' }}
                                        @endif>
                                        No</option>
                                </select>
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark" for="botiquin">Botiquin</label>
                                <select class="selectpicker form-control  form-control"="" name="botiquin"
                                    tag="botiquin">
                                    <option value="Si" @if ($vehiculo->botiquin =="Si" )
                                        {{ 'selected' }}
                                        @endif>
                                        Si</option>
                                    <option value="No" @if ($vehiculo->botiquin =="No" )
                                        {{ 'selected' }}
                                        @endif>
                                        No</option>
                                    <option value="Incompleto" @if ($vehiculo->botiquin =="Incompleto" )
                                        {{ 'selected' }}
                                        @endif>
                                        Incompleto</option>
                                </select>
                            </div>

                            <div class="form-group col-md-12">
                                <label class="text-dark" for="recomendacion">Recomendacion
                                </label>
                                <textarea type="text" name="recomendacion" tag="recomendacion"
                                    class="form-control">{{$vehiculo->recomendacion}}</textarea>
                            </div>

                            <div class="form-group col-md-12">
                                <input type="submit" id="btnUpdateVehiculo" class="btn btn-outline-info" value="Enviar">
                            </div>
                        </div>
                </div>
                </form>
            </div>
        </div>
    </div>

    <div class=" bg-secondary row-fluid mt-2" style='cursor: pointer;' onClick="muestra_oculta('mantenimientos')"
        title="" class="boton_mostrar ">
        <legend class=" text-center text-white text-md"><small style="font-weight:bold;">Mantenimientos</small>
        </legend>
    </div>

    <div class=" bg-white row-fluid mt-2 d-flex justify-content-center">

        <a href="javascript:void(0)" class="tooltip-wrapper text-dark" data-target="#modalMantenimientoRegister"
            data-toggle="modal" data-placement="top" title="" data-original-title="Nuevo">
            <i class="fa fa-edit btn btn-icon text-success"></i>Registrar Mantenimiento
        </a>

    </div>

    @include('admin.mantenimientos.formMantenimientoRegister')

    @include('admin.mantenimientos.formMantenimientoEdit')
    

    <div class="row" id="mantenimientos">
        <div class="col-lg-12">
            <div class="card card-statistics">
                <div class="card-body">
                    <div class="export-table-wrapper table-responsive">
                        <table class="table table-bordered dt-responsive nowrap mb-0" style="color:black"
                            id="dataTableMantenimientos" width="100%" cellspacing="0">
                            <thead class="thead">
                                <th>Nº</th>
                                <th>Fecha R</th>
                                <th>Mantenimiento</th>
                                <th>Valor Registrado</th>
                                <th>Proveedor</th>
                                <th>Descripcion</th>
                            </thead>
                            <tbody class="bg-white text text-dark" style="font-size: 1.1rem;">

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="card card-statistics">
                <div class="card-body">
                    <div class="export-table-wrapper table-responsive">
                        <table class="table table-bordered" id="dataTableMantenimientos" style="color:black"
                            width="100%" cellspacing="0">
                            <thead class="thead">
                                <tr>
                                    <th>Total gasto mes actual</th>
                                    <th>
                                        <div id="totalGastos"></div>
                                    </th>
                                </tr>
                            </thead>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    @include('admin.lavados.formLavadoRegister')
    @include('admin.lavados.formLavadoUpdate')


    <div class=" bg-secondary row-fluid mt-2" style='cursor: pointer;' onClick="muestra_oculta('lavados')" title=""
        class="boton_mostrar ">
        <legend class=" text-center text-white text-md"><small style="font-weight:bold;">Historico Km</small>
        </legend>
    </div>

    <div class="row" id="lavados">
        <div class="col-lg-12">
            <div class="card card-statistics">
                <div class="card-body">
                    <div class="export-table-wrapper table-responsive">
                        <table class="table table-bordered dt-responsive nowrap mb-0" style="color:black"
                            id="dataTableLavados" width="100%" cellspacing="0">
                            <thead class="thead">
                                <th>Nº</th>
                                <th>km Registrado</th>
                                <th>Fecha </th>
                                <th>Observacion</th>
                                <th></th>
                            </thead>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class=" bg-secondary row-fluid mt-2" style='cursor: pointer;' onClick="muestra_oculta('contratos')" title=""
        class="boton_mostrar ">
        <legend class=" text-center text-white text-md"><small style="font-weight:bold;">Contratos</small>
        </legend>
    </div>

    <div class=" bg-white row-fluid mt-2 d-flex justify-content-center">

        <a href="javascript:void(0)" class="tooltip-wrapper text-dark" data-target="#modalContratoRegister"
            data-toggle="modal" data-placement="top" title="" data-original-title="Nuevo">
            <i class="fa fa-edit btn btn-icon text-success"></i>Registrar Historico
        </a>

    </div>

    @include('admin.contratos.formContratoRegister')
    @include('admin.contratos.formContratoUpdate')

    <div class="row" id="contratos">
        <div class="col-lg-12">
            <div class="card card-statistics">
                <div class="card-body">
                    <div class="export-table-wrapper table-responsive">
                        <table id="dataTableContratos" class="table table-striped table-bordered dt-responsive nowrap"
                            cellspacing="0" width="100%">
                            <thead class="thead">
                                <th class="th-sm">S. No</th>
                                <th class="th-sm">Cliente</th>
                                <th class="th-sm">Fecha ingreso</th>
                                <th class="th-sm">Fecha egreso </th>
                                <th class="th-sm">Acciones </th>
                            </thead>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <!-- section nuevo mantenimiento  -->
    <div class="modal fade --" tabindex="-1" role="dialog" data-backdrop="static" data-ajax-modal
        id="modalDocumentacionRegister">
        <div class="modal-dialog modal-lg " role="document">
            <div class="modal-content ">
                <div class="card-header text-dark"> Subir documento
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="card-body">
                    <form id="formDocumentoRegister" method="POST" action="{{route('perfils.store')}}"
                        enctype="multipart/form-data">
                        @csrf
                        <div class="modal-body">
                            <div class="row">

                                <div class="col-md-12 mb-12">
                                    <label class="text-dark" for="file-upload" class="btn btn-success"
                                        style="cursor: pointer">
                                        <i class="fa fa-cloud"></i> Selecciona Archivo
                                    </label>
                                    <input required="true" id="file-upload" name="file" type="file"
                                        style='display: none;' />
                                    <div id="info"></div>
                                </div>

                                <input type="hidden" name="vehiculo_id" id="vehiculo_id" value="{{$vehiculo->id}}">

                            </div>
                        </div>
                        <div class="form-group col-md-3">
                            <input type="submit" class="btn btn-outline-info " id="btnSaveDocumento" value="Enviar">
                            <button type="button" class="btn btn-outline-dark" data-dismiss="modal">Cancel</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>


    @include('admin.proveedors.partials.formRegister')

</div>
@stop
@section('scripts')
<script>
    let token =  @JSON($vehiculo->id);
</script>
<script src="{{ asset('/js/apiHallazgo.js') }}"></script>
<script src="{{ asset('/js/apiLavado.js') }}"></script>
<script src="{{ asset('/js/apiMantenimiento.js') }}"></script>
<script src="{{ asset('/js/apiContrato.js') }}"></script>
<script src="{{ asset('/js/detailsVehiculo.js') }}"></script>
<script src="{{ asset('/js/apiGetTotal.js') }}"></script>
<script src="{{ asset('/js/apiRegisterProveedor.js') }}"></script>
<script src="{{ asset('/js/apiGetProveedores.js') }}"></script>
<script src="{{ asset('/js/apiCargaDocumentos.js') }}"></script>
<script>
    getProveedores()
</script>
@stop