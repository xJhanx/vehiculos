<div class="modal fade " tabindex="-1" role="dialog" data-backdrop="static" data-ajax-modal id="modalLocacionRegister">
    <div class="modal-dialog modal-lg " role="document">
        <div class="modal-content ">

            <div class="card-header text-dark">Registrar Locacion
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <div class="card-body">

                <form id="formLocacionRegister" method="POST" action="{{route('locacions.store')}}">
                    @csrf
                    <div class="modal-body">
                        <div class="row">

                            <div class="form-group col-md-6">
                                <label class="text-dark"> Nombres </label>
                                <input type="text" class="form-control" id="nombre" ="" name="nombre"
                                    placeholder="nombre">
                            </div>
                            <div class="form-group col-md-6">
                                <label class="text-dark">Descripcion </label>
                                <input type="text" class="form-control" id="descripcion" =""
                                    name="descripcion" placeholder="Descripcion">
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark">% Por Locacion </label>
                                <input type="number" class="form-control" id="porcentaje" =""
                                    name="porcentaje" placeholder="%">
                            </div>

                            <div class="form-group col-md-3">
                                <div class="text-lg-right text-nowrap ">
                                    <input type="submit" class="btn btn-outline-info " id="btnSaveLocacion"
                                        value="Enviar">
                                    <button type="button" class="btn btn-outline-dark"
                                        data-dismiss="modal">Cancel</button>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
