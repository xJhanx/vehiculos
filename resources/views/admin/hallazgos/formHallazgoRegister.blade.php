<!-- section nuevo mantenimiento  -->
<div class="modal fade --" tabindex="-1" role="dialog" data-backdrop="static" data-ajax-modal
    id="modalHallazgoRegister">
    <div class="modal-dialog modal-lg " role="document">
        <div class="modal-content ">
            <div class="card-header text-dark">Registrar Hallazgo
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <div class="card-body">

                <form id="formHallazgoRegister" method="POST" action="{{route('hallazgos.store')}}">
                    @csrf
                    <div class="modal-body">
                        <div class="row">

                        <input type="hidden" name="vehiculo_id" value="{{$vehiculo->id}}">

                            <div class="form-group col-md-6">
                                <label class="text-dark label-control" for="estado">Estado</label>
                                <select class="custom-select form-control" ="" name="estado" tag="estado">
                                    <option value="Activo"> Activo</option>
                                    <option value="Desactivo"> Desactivo</option>
                                </select>
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark label-control" for="prioridad">Prioridad</label>
                                <select class="custom-select form-control" ="" name="prioridad" tag="prioridad">
                                    <option value="Alta"> Alta</option>
                                    <option value="Media"> Media</option>
                                    <option value="Baja"> Baja</option>
                                </select>
                            </div>

                            <div class="form-group col-md-12">
                                <label class="text-dark" for="tipo">Observacion</label>
                                <textarea class="form-control"  name="observacion" tag="observacion" cols="30" rows="10"></textarea>
                            </div>

                        </div>
                    </div>

                    <div class="form-group col-md-3">
                        <input type="submit" class="btn btn-outline-info " id="btnSaveHallazgo" value="Enviar">
                        <button type="button" class="btn btn-outline-dark" data-dismiss="modal">Cancel</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
