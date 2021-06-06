<!-- section nuevo mantenimiento  -->
<div class="modal fade --" tabindex="-1" role="dialog" data-backdrop="static" data-ajax-modal
    id="modalAutoparteRegister">
    <div class="modal-dialog modal-lg " role="document">
        <div class="modal-content ">
            <div class="card-header text-dark">Registrar Autoparte
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <div class="card-body">

                <form id="formAutoparteRegister" method="POST" action="{{route('autopartes.store')}}">
                    @csrf
                    <div class="modal-body">
                        <div class="row">

                            <div class="form-group col-md-12">
                                <label class="text-dark" for="tipo"> Nombre Autoparte </label>
                                <input class="form-control" type="text" name="nombre" id="nombre" placeholder="Nombre">

                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark" for="referencia"> Referencia </label>
                                <input class="form-control" type="text" name="referencia" id="referencia"
                                    placeholder="Referencia">

                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark" for="proveedor_id">Proveedor</label>
                                <select class="selectpicker form-control" data-live-search="true"="" name="proveedor_id"
                                    id="proveedor_id">
                                    @foreach ($proveedores as $item)
                                    <option value="{{$item->id}}">{{$item->fullname }}</option>
                                    @endforeach
                                </select>
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark" for="num_factura"> # De Factura </label>
                                <input class="form-control" type="text" name="num_factura" id="num_factura"
                                    placeholder="Factura">

                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark" for="cantidad">Cantidad</label>
                                <input class="form-control" type="number" name="cantidad" id="cantidad"
                                    class="form-control" placeholder="0">
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark" for="valor_unidad">Precio Unitario</label>
                                <input class="form-control" type="currency" name="valor_unidad" id="valor_unidad"
                                    class="form-control" placeholder="0"
                                    onkeyup="puntitos(this,this.value.charAt(this.value.length-1))">
                            </div>

                            <div class="form-group col-md-12">
                                <label class="text-dark" for="descripcion">Descripcion
                                </label>
                                <textarea type="text" name="descripcion" id="descripcion"
                                    class="form-control"></textarea>
                            </div>
                        </div>

                    </div>

                    <div class="form-group col-md-3">
                        <input type="submit" class="btn btn-outline-info " id="btnSaveAutoparte" value="Enviar">
                        <button type="button" class="btn btn-outline-dark" data-dismiss="modal">Cancel</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>