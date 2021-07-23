<div class="modal-content ">

    <div class="card-body row">

        <div class="container">
            <h5 class="my-2" style="font-weight:bold">Solicitud de servicio </h5>
            <div class="progress">

                <div class="progress-bar progress-bar-striped active bg-info" role="progressbar" aria-valuemin="0"
                    aria-valuemax="1000"></div>

            </div>

            <form id="formServiceUpdate" class="regiration_form" method="POST" action="{{route('servicios.update')}}">

                @csrf
                @method('PATCH')

                <div class="row">

                    <div class="form-group col-md-6">
                        <label for="date">Dia del servicio</label>
                        <input type="date" class="form-control" id="date" name="data[date]"
                            placeholder="Fecha del servicio">
                    </div>

                    <div class="form-group col-md-6">
                        <label for="hour">Hora</label>
                        <input type="time" class="form-control" id="hour" name="data[hour]"
                            placeholder="Hora del servicio">
                    </div>

                    <div class="form-group col-md-6">
                        <label for="point_start">Punto de inicio</label>
                        <input type="text" class="form-control" id="point_start" name="data[punto_inicio]"
                            placeholder="Punto de inicio ">
                    </div>

                    <div class="form-group col-md-6">
                        <label for="point_end">Punto de llegada</label>
                        <input type="text" class="form-control" id="point_end" name="data[punto_fin]"
                            placeholder="Punto de llegada">
                    </div>

                    <div class="form-group col-md-6">
                        <label for="point_end">Estado</label>

                        <select class="custom-select form-control" id="estado" name="data[estado]">
                            <option value="Solicitado por el cliente">Solicitado por el cliente</option>
                            <option value="Solicitud de recogida aceptada">Solicitud de recogida aceptada</option>
                            <option value="Recogida en progreso">Recogida en progreso</option>
                            <option value="Servicio realizado">Servicio realizado</option>
                        </select>

                    </div>

                    <div class="form-group col-md-6">
                        <label for="point_end">Costo del servicio </label>
                        <input type="number" class="form-control" id="costo" name="data[costo]" placeholder="0">
                    </div>

                    <!--<div class="form-group col-md-6">-->
                    <!--    <label for="point_end">Solicitante del servicio</label>-->
                    <!--    <select class="selectpicker form-control" data-live-search="true" name="conductor_id"-->
                    <!--        id="conductor_id">-->
                            
                    <!--        <option value=""></option>-->
                            
                    <!--    </select>-->
                    <!--</div>-->

                    <div class="form-group col-md-6">
                        <label for="point_end">Conductor</label>
                        <select class="selectpicker form-control" data-live-search="true" name="data[conductor_id]"
                            id="conductor_id">
                            <option selected>Seleccione</option>
                            @foreach ($conductores as $item)
                            <option value="{{$item->id}}">{{$item->nombre }} {{$item->apellido }} :
                                {{$item->identificacion }}</option>
                            @endforeach
                        </select>
                    </div>

                    <div class="form-group col-md-6">
                        <label for="point_end">Vehiculo</label>
                        <select class="selectpicker form-control" data-live-search="true" name="data[vehiculo_id]"
                            id="vehiculo_id">
                            <option selected>Seleccione</option>
                            @foreach ($vehiculos as $item)
                            <option value="{{$item->id}}">{{$item->placa }}</option>
                            @endforeach
                        </select>
                    </div>

                    <div class="form-group col-md-6">
                        <label for="observaciones">Observaciones</label>
                        <textarea type="text" class="form-control" id="observaciones" name="data[observaciones]"
                            placeholder="Observaciones"></textarea>
                    </div>
                </div>

                <input type="hidden" name="id" id="id">

                <input type="submit" name="submit" class="submit btn btn-success" value="Enviar" id="submit_data" />

            </form>

        </div>
    </div>

</div>