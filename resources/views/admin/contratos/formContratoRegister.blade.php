<!-- section nuevo mantenimiento  -->
<div class="modal fade --" tabindex="-1" role="dialog" data-backdrop="static" data-ajax-modal
    id="modalContratoRegister">
    <div class="modal-dialog modal-lg " role="document">
        <div class="modal-content ">
            <div class="card-header text-dark">Registrar Historico
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <div class="card-body">

                <form id="formContratoRegister" method="POST" action="{{route('contratos.store')}}">
                    @csrf
                    <div class="modal-body">
                        <div class="row">

                            <input type="hidden" name="vehiculo_id" value="{{$vehiculo->id}}">

                            <div class="form-group col-md-12">
                                <label class="text-dark" for="cliente_id">Cliente</label>
                                <select class="custom-select form-control" name="cliente_id" tag="cliente_id">
                                    @foreach ($clientes as $item)
                                    <option value="{{$item->id}}"> {{$item->fullname}}</option>
                                    @endforeach
                                </select>
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark" for="finicio">
                                    Fecha de ingreso
                                </label>
                                <input type="date" name="finicio" tag="finicio" class="form-control text-dark">
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark" for="ffin">
                                    Fecha de Egreso
                                </label>
                                <input type="date" name="ffin" tag="ffin" class="form-control text-dark">
                            </div>

                        </div>
                    </div>

                    <div class="form-group col-md-3">
                        <input type="submit" class="btn btn-outline-info " id="btnSaveContrato" value="Enviar">
                        <button type="button" class="btn btn-outline-dark" data-dismiss="modal">Cancel</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
