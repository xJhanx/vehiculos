<!-- section nuevo mantenimiento  -->
<div class="modal fade --" tabindex="-1" role="dialog" data-backdrop="static" data-ajax-modal id="modalParteUpdate">
    <div class="modal-dialog modal-lg " role="document">
        <div class="modal-content ">
            <div class="card-header text-dark">Actualizar Parte
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <div class="card-body">

                <form id="formParteUpdate" action="{{route('partes.update')}}">
                    @csrf
                    @method('PATCH')
                    <div class="modal-body">
                        <div class="row">

                            <input type="hidden" name="id" id="id">

                            <div class="form-group col-md-12">
                                <label class="text-dark" for="nombre">Nombre</label>
                                <input type="text" name="nombre" tag="nombre" class="form-control">
                            </div>

                            <div class="form-group col-md-12">
                                <label class="text-dark" for="prioridad">Prioridad
                                </label>
                                <select name="prioridad" class="select custom-select">
                                    <option value="Alta">Alta</option>
                                    <option value="Media">Media</option>
                                    <option value="Baja">Baja</option>
                                </select>

                            </div>

                            <div class="form-group col-md-12">
                                <label class="text-dark" for="evaluacion">Evaluacion en:
                                </label>
                                <select name="evaluacion" class="select custom-select">
                                    <option value="kms">Kms</option>
                                    <option value="dias">Dias</option>
                                </select>
                            </div>

                            <div class="form-group col-md-12">
                                <label class="text-dark" for="frecuencia">Frecuencia
                                </label>
                                <input type="number" name="frecuencia" tag="frecuencia" class="form-control">
                            </div>

                            <div class="form-group col-md-12">
                                <label class="text-dark" for="fuente">Fuente
                                </label>
                                <input type="text" name="fuente" tag="fuente" class="form-control">
                            </div>

                            <div class="form-group col-md-12">
                                <label class="text-dark" for="descripcion">Descripcion
                                </label>
                                <textarea type="text" name="descripcion" tag="descripcion"
                                    class="form-control"></textarea>
                            </div>
                        </div>

                    </div>
            </div>

            <div class="form-group col-md-3">
                <input type="submit" class="btn btn-outline-info " id="btnUpdateParte" value="Enviar">
                <button type="button" class="btn btn-outline-dark" data-dismiss="modal">Cancel</button>
            </div>
            </form>

        </div>
    </div>
</div>