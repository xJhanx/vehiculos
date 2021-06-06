<!-- section nuevo mantenimiento  -->
<div class="modal fade --" tabindex="-1" role="dialog" data-backdrop="static" data-ajax-modal
    id="modalContratoUpdate">
    <div class="modal-dialog modal-lg " role="document">
        <div class="modal-content ">
            <div class="card-header text-dark">Actualizar Contrato
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <div class="card-body">
                <small style="font-size:1em" class="d-flex justify-content-center text-info">
                    kilometros actuales {{$vehiculo->km_actual}}
                </small>
                <form id="formContratoUpdate" action="{{route('contratos.update')}}">
                    @csrf
                    @method('PATCH')
                    <div class="modal-body">
                        <div class="row">

                            <input type="hidden" name="id" id="id">

                            <div class="form-group col-md-12">
                                <label class="text-dark" for="">Cliente</label>
                                <input type="text" readonly id="cliente_id" class="form-control text-dark">
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark" for="finicio">
                                    Fecha de ingreso
                                </label>
                                <input type="date" name="finicio" id="finicio" class="form-control text-dark">
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark" for="ffin">
                                    Fecha de Egreso
                                </label>
                                <input type="date" name="ffin" id="ffin" class="form-control text-dark">
                            </div>

                        </div>
                    </div>

                    <div class="form-group col-md-3">
                        <input type="submit" class="btn btn-outline-info " id="btnUpdateContrato" value="Enviar">
                        <button type="button" class="btn btn-outline-dark" data-dismiss="modal">Cancel</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
