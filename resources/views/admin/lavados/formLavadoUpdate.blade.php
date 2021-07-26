<!-- section nuevo mantenimiento  -->
<div class="modal fade --" tabindex="-1" role="dialog" data-backdrop="static" data-ajax-modal
    id="modalLavadoUpdate">
    <div class="modal-dialog modal-lg " role="document">
        <div class="modal-content ">
            <div class="card-header text-dark">Registrar Lavado
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <div class="card-body">

                <form id="formLavadoUpdate" method="POST" action="{{route('lavados.update')}}">
                    @csrf
                    @method('PUT')

                    <div class="modal-body">
                        <div class="row">

                            <input type="hidden" name="id">

                            <div class="form-group col-md-12">
                                <label class="text-dark" for="tipo">Km Registrado</label>
                                <input type="number" class="form-control" name="km_registrado">
                            </div>

                            <div class="form-group col-md-12">
                                <label class="text-dark" for="tipo">Fecha de Ingreso</label>
                                <input type="date" class="form-control" name="f_ingreso">
                            </div>


                            <div class="form-group col-md-12">
                                <label class="text-dark" for="tipo">Observacion</label>
                                <textarea class="form-control" name="observacion" tag="observacion" cols="30"
                                    rows="10"></textarea>
                            </div>

                        </div>
                    </div>

                    <div class="form-group col-md-3">
                        <input type="submit" class="btn btn-outline-info " id="btnUpdateLavado" value="Enviar">
                        <button type="button" class="btn btn-outline-dark" data-dismiss="modal">Cancel</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
