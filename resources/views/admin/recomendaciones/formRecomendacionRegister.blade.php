<!-- section nuevo mantenimiento  -->
<div class="modal fade --" tabindex="-1" role="dialog" data-backdrop="static" data-ajax-modal
    id="modalRecomendacionRegister">
    <div class="modal-dialog modal-lg "> role="document">
        <div class="modal-content ">
            <div class="card-header text-dark">Registrar Especificacion
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <div class="card-body">
                <small style="font-size:1em" class="d-flex justify-content-center text-info">
                    kilometros actuales {{$vehiculo->km_actual}}
                </small>
                <form id="formRecomendacionRegister" method="POST" action="{{route('recomendaciones.store')}}">
                    @csrf
                    <div class="modal-body">
                        <div class="row">

                            <input type="hidden" name="vehiculo_id" tag="vehiculo_id" value="{{$vehiculo->id}}">

                            <div class="form-group col-md-12 ">
                                <label class="text-dark" for="parte_id">
                                    Autoparte
                                </label>

                                <select class="form-control select-modalRecomendacionRegister" style="width: 50%"
                                    required data-live-search="true" name="parte_id" tag="parte_id">
                                    @foreach ($partes as $parte)
                                    <option style="text-transform: uppercase" value="{{$parte->id}}">{{$parte->nombre  . '   :   ' .  $parte->frecuencia  . '   :   ' . $parte->evaluacion}}</option>
                                    @endforeach
                                </select>
                            </div>

                            <div class="form-group col-md-4">
                                <label class="text-dark" for="seguimiento">
                                    Segumiento:
                                </label>
                                <select class="custom-select  form-control" name="seguimiento" tag="seguimiento">
                                    <option value="Programado">Programado</option>
                                </select>
                            </div>

                            <div class="form-group col-md-12">
                                <label class="text-dark" for="observacion">
                                    Observacion
                                </label>
                                <textarea type="text" name="observacion" tag="observacion"
                                    class="form-control text-dark"></textarea>
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark" for="fecha_programado">
                                    Fecha programado
                                </label>
                                <input type="date" name="fecha_programado" tag="fecha_programado"
                                    class="form-control text-dark">
                            </div>

                        </div>
                    </div>

                    <div class="form-group">
                        <input type="submit" class="btn btn-outline-info " id="btnSaveRecomendacion" value="Enviar">
                        <button type="button" class="btn btn-outline-dark" data-dismiss="modal">Cancel</button>
                    </div>
                </form>
            </div>
        </div>
    </div>




</div>