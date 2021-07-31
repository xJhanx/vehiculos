<div class="modal-content ">

    <div class="card-body row">

        <div class="container">
            <h5 class="my-2" style="font-weight:bold">Solicitud de servicio. </h5>
            <div class="progress">
            </div>

            <form id="formServiceUpdate" class="regiration_form" method="POST"
                action="{{ route('servicios.update') }}">

                @csrf
                @method('PATCH')

                <div class="row">

                    <div class="form-group col-md-6">
                        <label for="date">Dia del servicio</label>
                        <input type="date" class="form-control" readonly="readonly" id="date" name="data[date]"
                            placeholder="Fecha del servicio">
                    </div>

                    <div class="form-group col-md-6">
                        <label for="hour">Hora</label>
                        <input type="time" class="form-control" id="hour" readonly="true" name="data[hour]"
                            placeholder="Hora del servicio">
                    </div>

                    <div class="form-group col-md-6">
                        <label for="point_start">Punto de inicio</label>
                        <input type="text" class="form-control" id="point_start" readonly="true"
                            name="data[punto_inicio]" placeholder="Punto de inicio ">
                    </div>

                    <div class="form-group col-md-6">
                        <label for="point_end">Punto de llegada</label>
                        <input type="text" class="form-control" id="point_end" readonly="true" name="data[punto_fin]"
                            placeholder="Punto de llegada">
                    </div>

                    <div class="form-group col-md-6">
                        <label for="point_end">Estado</label>

                        <select class="custom-select form-control" id="estado" {{-- readonly="true" --}}
                            name="data[estado]">
                            <option value="Solicitado por el cliente">Solicitado por el cliente</option>
                            <option value="Solicitud de recogida aceptada">Solicitud de recogida aceptada</option>
                            <option value="Recogida en progreso">Recogida en progreso</option>
                            <option value="Servicio realizado">Servicio realizado</option>
                        </select>

                    </div>

                    <div class="form-group col-md-6">
                        <label for="point_end">Costo del servicio </label>
                        <input type="number" class="form-control" id="costo" readonly="true" name="data[costo]"
                            placeholder="0">
                    </div>



                    <div class="form-group col-md-6">
                        <label for="point_end">Conductor</label>
                        <select class="selectpicker form-control" data-live-search="true" readonly="true"
                            name="conductor_id" id="conductor_id" disabled="true">
                            <option selected>Seleccione</option>
                            @foreach ($conductores as $item)
                                <option value="{{ $item->id }}">{{ $item->nombre }} {{ $item->apellido }} :
                                    {{ $item->identificacion }}</option>
                            @endforeach
                        </select>
                    </div>

                    <div class="form-group col-md-6">
                        <label for="point_end">Vehiculo</label>
                        <select class="selectpicker form-control" data-live-search="true" disabled="true"
                            name="vehiculo_id" id="vehiculo_id">
                            @foreach ($servicio->conductor->vehiculos as $item)
                                <option value=0>Seleccione</option>
                                <option value="{{ $item->id }}">{{ $item->placa }}</option>
                            @endforeach
                        </select>
                        @can('infoVehiculo')
                        <button type="button" class="btn btn-outline-primary mt-2" onclick="verVehiculo()">Ver vehiculo</button>
                        @endcan

                    </div>

                    <div class="form-group col-md-6">
                        <label for="observaciones">Observaciones</label>
                        <textarea type="text" class="form-control" id="observaciones" readonly="true"
                            name="data[observaciones]" placeholder="Observaciones"></textarea>
                    </div>


                    <div class="form-group col-md-6">
                        {{-- @can('isClienteCompany')
                        <label for="observaciones">Observaciones conductor </label>
                        <textarea type="text" class="form-control" id="observaciones_conductor"
                        name="data[observaciones_conductor]" placeholder="Observaciones" readonly="true"></textarea>
                        @endcan --}}
                        @can('isGerente')
                            <label for="observaciones">Observaciones conductor </label>
                            <textarea type="text" class="form-control" id="observaciones_conductor"
                                name="data[observaciones_conductor]" placeholder="Observaciones" readonly="true"></textarea>
                        @endcan
                        @can('isAdmin')
                            <label for="observaciones">Observaciones conductor </label>
                            <textarea type="text" class="form-control" id="observaciones_conductor"
                                name="data[observaciones_conductor]" placeholder="Observaciones" readonly="true"></textarea>
                        @endcan
                        @can('isConductor')
                            <label for="observaciones">Observaciones conductor </label>
                            <textarea type="text" class="form-control" id="observaciones_conductor"
                                name="data[observaciones_conductor]" placeholder="Observaciones"></textarea>
                        @endcan
                        
                    </div>


                </div>

                <input type="hidden" name="id">

                @can('isConductor')

                    <input type="submit" name="submit" class="submit btn btn-success" value="Enviar" id="submit_data" />

                @endcan


            </form>

        </div>
    </div>

</div>
