<!-- section nuevo mantenimiento  -->
<div class="modal fade --" tabindex="-1" role="dialog" data-backdrop="static" data-ajax-modal
    id="modalRecomendacionUpdate">
    <div class="modal-dialog modal-lg " role="document">
        <div class="modal-content ">
            <div class="card-header text-dark">Actualizar recomendacion
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <div class="card-body">
                <small style="font-size:1em" class="d-flex justify-content-center text-info">
                    kilometros actuales {{$vehiculo->km_actual}}
                </small>
                <form id="formRecomendacionUpdate" action="{{route('recomendaciones.update')}}">
                    @csrf
                    @method('PATCH')
                    <div class="modal-body">
                        <div class="row">

                            <input type="hidden" name="id" id="id">

                            <div class="form-group text-center col-md-8 ">
                                <label class="text-dark label-form text-center" for="parte_id">
                                    Autoparte
                                </label>

                                <div class="form-group col-md-12">
                                    <select class="select custom-select form-control" name="parte_id"
                                        id="parte_id">
                                        @foreach ($partes as $parte)
                                        <option disabled value="{{$parte->id}}">{{$parte->nombre}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>

                            <div class="form-group col-md-4">
                                <label class="text-dark" for="seguimiento">
                                    Estado:
                                </label>
                                <select class="custom-select  form-control" name="seguimiento" id="seguimiento">
                                    <option value="Programado">Programar</option>
                                    <option value="No Programado">No Programar</option>
                                </select>
                            </div>

                            <div class="form-group col-md-12">
                                <div class="alert-success row-fluid ">
                                    <legend class=" text-center text-danger text-md" style="font-size:0.9em"><small
                                            style="font-weight:bold;"> Espacio para cuando se pase estado a ejecutado
                                        </small></legend>
                                </div>
                            </div>

                            <div class="form-group col-md-12">
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="check" name="exec">
                                    <label class="custom-control-label" for="check">
                                        ¿Ejecutado?
                                    </label>
                                </div>
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark" for="proveedor_id">Proveedor</label>
                                <select class="selectpicker form-control" data-live-search="true" name="proveedor_id"
                                    id="proveedor_id">
                                    @foreach ($proveedores as $proveedor)
                                    <option value="{{$proveedor->id}}">{{$proveedor->fullname }}</option>
                                    @endforeach
                                </select>
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark" for="factura">
                                    # De Factura
                                </label>
                                <input type="text" name="factura" id="factura" class="form-control text-dark">
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark" for="tipo">Tipo de Mantenimiento</label>
                                <select class="custom-select form-control" name="tipo" id="tipo">
                                    <option value="Preventivo"> Preventivo</option>
                                    <option value="Correctivo"> Correctivo</option>
                                </select>
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark" for="subtotal">
                                    Valor Total del recibo
                                </label>
                                <input type="currency" name="subtotal" id="subtotal" min="0"
                                    class="form-control text-dark"
                                    onkeyup="puntitos(this,this.value.charAt(this.value.length-1))" />
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark" for="km_actual">
                                    km actual
                                </label>
                                <input type="currency" required name="km_actual" id="km_actual" min="0"
                                    class="form-control text-dark"
                                    onkeyup="puntitos(this,this.value.charAt(this.value.length-1))" />
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark" for="fecha_ejecutado">
                                    Fecha de ejecutado
                                </label>
                                <input type="date" name="fecha_ejecutado" id="fecha_ejecutado"
                                    class="form-control text-dark">
                            </div>

                            <div class="form-group col-md-12">
                                <label class="text-dark" for="observacion">
                                    Observacion
                                </label>
                                <textarea type="text" name="observacion" id="observacion"
                                    class="form-control text-dark"></textarea>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <input type="submit" class="btn btn-outline-info " id="btnUpdateRecomendacion" value="Enviar">
                        <button type="button" class="btn btn-outline-dark" data-dismiss="modal">Cancel</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>