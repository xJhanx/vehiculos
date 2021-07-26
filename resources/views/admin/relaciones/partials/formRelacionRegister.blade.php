<!-- section nuevo mantenimiento  -->
<div class="modal fade --" tabindex="-1" role="dialog" data-backdrop="static" data-ajax-modal
    id="modalRelacionRegister">
    <div class="modal-dialog modal-lg " role="document">
        <div class="modal-content ">
            <div class="card-header text-dark">Registrar Relacion Vehiculo-Autoparte
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <div class="card-body">

                <form id="formRelacionRegister" method="POST" action="{{route('relacions.store')}}">
                    @csrf
                    <div class="modal-body">
                        <div class="row">

                            <div class="form-group col-md-12">
                                <label class="text-dark" for="vehiculo_id"> Vehiculo </label>

                                <select class="selectpicker form-control" data-live-search="true" name="vehiculo_id" id="vehiculo_id">
                                    @foreach($vehiculos as $key => $vehiculo)
                                    <option value="{{$vehiculo->id}}"> {{$vehiculo->placa}} </option>
                                    @endforeach
                                </select>

                            </div>

                            <div class="form-group col-md-12">
                                <label class="text-dark" for="autoparte_id"> Vehiculo </label>
                                <select class="selectpicker form-control" data-live-search="true" name="autoparte_id" id="autoparte_id">
                                    @foreach($autopartes as $key => $autoparte)
                                    <option value="{{$autoparte->id}}">
                                        {{$autoparte->nombre ."\r\n  => Disponibles : \t\n" .$autoparte->cantidad}}
                                    </option>
                                    @endforeach

                                </select>

                            </div>

                            <div class="form-group col-md-12">
                                <label class="text-dark" for="cantidad"> Cantidad </label>
                                <input type="number" min="0" name="cantidad" id="cantidad" class="form-control">
                            </div>
                        </div>
                    </div>

                    <div class="form-group col-md-3">
                        <input type="submit" class="btn btn-outline-info " id="btnSaveRelacion" value="Enviar">
                        <button type="button" class="btn btn-outline-dark" data-dismiss="modal">Cancel</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
