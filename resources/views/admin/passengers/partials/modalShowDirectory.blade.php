<div class="modal fade  " tabindex="-1" role="dialog" data-backdrop="static" data-ajax-modal
    id="modalShowDirectory">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content ">

            <div class="card-header text-dark">Registrar Pasajero
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <div class="card-body">

                <form id="formPassengerRegisterOnService" method="POST" action="{{route('passengers.store')}}">
                    @csrf
                    <div class="modal-body">
                        <div class="row">

                            <input type="hidden" name="id_servicio" id="id_servicio">

                            <div class="w-100"></div>
                            <div id="checkPassengers"></div>
                            
                        </div>

                        <div class="form-group mt-3 ">
                            <input type="submit" class="btn btn-outline-info " id="btnRegisterPassengers" value="Enviar">
                            <button type="button" class="btn btn-outline-dark" data-dismiss="modal">Cancel</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>