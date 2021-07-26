<!-- section nuevo mantenimiento  -->
<div class="modal fade --" tabindex="-1" role="dialog" data-backdrop="static" data-ajax-modal
    id="modalMantenimientoEdit">
    <div class="modal-dialog modal-lg " role="document">
        <div class="modal-content ">
            <div class="card-header text-dark">Registrar Mantenimiento
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <div class="card-body">

                <div class="card card-statistics row">
                    <div class="card-body col-md-12 d-flex justify-content-center">
                        <p class="text text-info"> Km actual ::
                            <small class="font-weight-bold" style="font-size:1.1em">
                                {{$vehiculo->km_actual}} kilometros
                            </small>
                        </p>
                    </div>
                </div>

                <form id="formMantenimientoEdit" method="POST" action="{{route('mantenimientos.update')}}">
                    @csrf
                    @method('PUT')

                    <div class="modal-body">
                        <div class="row">

                            <input type="hidden" name="id" class="form-control text-dark">


                            <div class="form-group col-md-6">
                                <label class="text-dark" for="proveedor_id">Proveedor</label>

                                <select class="selectpicker form-control" data-live-search="true" name="proveedor_id"
                                    id="proveedores">
                                </select>

                                <a href="javascript:void(0)" class="btn btn-icon btn-sm" data-toggle="modal"
                                    data-placement="top" data-target="#modalProveedorRegister" title="Registrar">
                                    <i class="fa fa-edit text-success"></i> Nuevo proveedor
                                </a>

                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark" for="factura">
                                    # De Factura
                                </label>
                                <input type="text" name="factura" tag="factura" class="form-control text-dark">
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark" for="tipo">Tipo de Mantenimiento</label>
                                <select class="custom-select form-control" name="tipo" tag="tipo">
                                    <option value="Preventivo"> Preventivo</option>
                                    <option value="Correctivo"> Correctivo</option>
                                </select>
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark" for="subtotal">
                                    Valor Total del recibo
                                </label>
                                <input type="currency" name="subtotal" tag="subtotal"
                                    onkeyup="puntitos(this,this.value.charAt(this.value.length-1))"
                                    class="form-control text-dark" required>
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark" for="km_actual"> Km
                                    actual
                                </label>
                                <input type="currency" name="km_actual" tag="km_actual" min="0"
                                    onkeyup="puntitos(this,this.value.charAt(this.value.length-1))"
                                    class="form-control text-dark">
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark" for="fecha_ejecutado">
                                    Fecha de ejecutado
                                </label>
                                <input type="date" name="fecha_ejecutado" tag="fecha_ejecutado"
                                    class="form-control text-dark">
                            </div>

                            <div class="form-group col-md-12">
                                <label class="text-dark" for="descripcion">
                                    Descripcion del mantenimiento
                                </label>
                                <textarea type="text" name="descripcion" tag="descripcion"
                                    class="form-control text-dark"></textarea>
                            </div>
                        </div>
                    </div>

                    <div class="form-group col-md-3">
                        <input type="submit" class="btn btn-outline-info " id="btnUpdateMantenimiento" value="Enviar">
                        <button type="button" class="btn btn-outline-dark" data-dismiss="modal">Cancel</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>