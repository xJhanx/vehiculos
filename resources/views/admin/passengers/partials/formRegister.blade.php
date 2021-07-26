<div class="modal fade  " tabindex="-1" role="dialog" data-backdrop="static" data-ajax-modal
    id="modalPassengerRegister">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content ">

            <div class="card-header text-dark">Registrar Pasajero
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <div class="card-body">

                <form id="formPassengerRegister" method="POST" action="{{route('passengers.store')}}">
                    @csrf
                    <div class="modal-body">
                        <div class="row">

                            <div class="form-group col-md-6">
                                <label class="text-dark"> Nombres </label>
                                <input type="text" class="form-control" name="nombre" placeholder="Nombres">
                            </div>
                            <div class="form-group col-md-6">
                                <label class="text-dark">Apellidos </label>
                                <input type="text" class="form-control" name="apellido" placeholder="Apellidos">
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark">Tipo de Identificación</label>
                                <select class="form-control" name="tipo_identificacion">
                                    <option disabled selected> Selecciona...</option>
                                    <option value="Cedula">Cedula</option>
                                    <option value="Passport">Passport</option>
                                    <option value="Nit">Nit</option>
                                    <option value="Otro">Otro</option>
                                </select>
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark"># Identificacion</label>
                                <input type="number" class="form-control" name="identificacion" placeholder="">
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark">Cargo</label>
                                <input type="text" class="form-control" name="cargo" placeholder="">
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark">Mail </label>
                                <input type="email" class="form-control" name="email" placeholder="E-mail">
                            </div>


                            <div class="form-group col-md-6">
                                <label class="text-dark">Ciudad</label>
                                <input type="text" class="form-control" name="ciudad" placeholder="ciudad">
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark">Dirección</label>
                                <input type="text" class="form-control" name="direccion" placeholder="">
                            </div>

                            <div class="form-group col-md-3">
                                <label class="text-dark">Telefono</label>
                                <input type="phone" class="form-control" name="telefono" placeholder="Telefono">
                            </div>

                            <div class="form-group col-md-3">
                                <label class="text-dark">Telefono (opcional)</label>
                                <input type="phone" class="form-control" name="opcional_telefono"
                                    placeholder="Telefono ">
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark">Dirección de encuentro</label>
                                <input type="Text" class="form-control" name="encuentro" placeholder=" ">
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark">Dirección de destino</label>
                                <input type="Text" class="form-control" name="destino" placeholder=" ">
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark">Observaciones</label>
                                <textarea class="form-control" rows="1" type="Text" class="form-control" name="observaciones">
                                </textarea>
                            </div>

                        </div>

                        <div class="form-group ">
                            <input type="submit" class="btn btn-outline-info " id="btnSavePassenger" value="Enviar">
                            <button type="button" class="btn btn-outline-dark" data-dismiss="modal">Cancel</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>