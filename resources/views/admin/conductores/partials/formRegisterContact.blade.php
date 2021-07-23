<div class="modal fade mt-5" tabindex="-1" role="dialog" data-backdrop="static" data-ajax-modal
    id="modalConductorContactRegister">
    <div class="modal-dialog modal-lg " role="document">
        <div class="modal-content ">

            <div class="card-header text-dark">Registrar Contacto de emergencia
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <div class="card-body">

                <form id="formConductorRegister" method="POST" action="{{route('emergencycontacts.store')}}">
                    @csrf
                    <div class="modal-body">
                        <div class="row">

                            <input type="hidden" name="conductor_id" value="{{$conductor->id}}"> 

                            <div class="form-group col-md-6">
                                <label class="text-dark">Nombre completo</label>
                                <input type="text" cols="15" class="form-control" required name="nombre">
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark">Numero</label>
                                <input type="number" cols="15" class="form-control" required name="numero">
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark">Email</label>
                                <input type="email" cols="15" class="form-control"  name="email">
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark">Parentesco</label>
                                <input type="text" cols="15" class="form-control"  name="parentesco">
                            </div>

                            

                            <div class="form-group col-md-12">
                                <input type="submit" class="btn btn-outline-info  btn-sm " id="btnSaveHistoria"
                                    value="Enviar">
                                <button type="button" class="btn btn-outline-dark btn-sm "
                                    data-dismiss="modal">Cancel</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>