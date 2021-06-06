<!-- section nuevo mantenimiento  -->
<div class="modal fade --" tabindex="-1" role="dialog" data-backdrop="static" data-ajax-modal
    id="modalRelacionUpdate">
    <div class="modal-dialog modal-lg " role="document">
        <div class="modal-content ">
            <div class="card-header text-dark">Actualizar Relacion
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <div class="card-body">

                <form id="formRelacionUpdate" action="{{route('elementos.update')}}">
                    @csrf
                    @method('PATCH')
                    <div class="modal-body">
                        <div class="row">

                            <input type="hidden" name="id" id="id">

                            <div class="form-group col-md-12">
                                <label class="text-dark" for="tipo">Relacion del tipo </label>

                                <select class="custom-select form-control" name="tipo" id="tipo">
                                    <option disabled selected>Selecciona</option>
                                    <option value="seguridad"> De seguridad </option>
                                </select>

                            </div>

                            <div class="form-group col-md-12">
                                <label class="text-dark" for="descripcion"> Descripcion </label>
                                <select class="custom-select form-control" name="descripcion" id="descripcion">
                                    <option disabled selected>Selecciona</option>
                                </select>
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark" for="disponibilidad">Disponible</label>
                                <select class="custom-select  form-control" ="" name="disponibilidad"
                                    id="disponibilidad">
                                    <option value="Si">Si</option>
                                </select>
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark" for="cantidad">Cantidad</label>
                                <input type="number" name="cantidad" id="cantidad" class="form-control">
                            </div>

                            <div class="form-group col-md-12">
                                <label class="text-dark" for="observacion">Recomendacion
                                </label>
                                <textarea type="text" name="observacion" id="observacion"
                                    class="form-control"></textarea>
                            </div>
                        </div>
                    </div>
            </div>

            <div class="form-group col-md-3">
                <input type="submit" class="btn btn-outline-info " id="btnUpdateRelacion" value="Enviar">
                <button type="button" class="btn btn-outline-dark" data-dismiss="modal">Cancel</button>
            </div>
            </form>

        </div>
    </div>
</div>
