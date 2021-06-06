<!-- section nuevo mantenimiento  -->
<div class="modal fade --" tabindex="-1" role="dialog" data-backdrop="static" data-ajax-modal id="modalAutoparteUpdate">
    <div class="modal-dialog modal-lg " role="document">
        <div class="modal-content ">
            <div class="card-header text-dark">Actualizar Autoparte
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <div class="card-body">
                <form id="formAutoparteUpdate" action="{{route('autopartes.update')}}">
                    @csrf
                    @method('PATCH')


                    <div class="modal-body">
                        <div class="row">

                            <input type="hidden" name="id" id="id">


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
                                <label class="text-dark" for="num_factura"> # de Factura </label>
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

                        <div class="form-group ">
                            <input type="submit" class="btn btn-outline-info " id="btnUpdateAutoparte" value="Enviar">
                            <button type="button" class="btn btn-outline-dark" data-dismiss="modal">Cancel</button>
                        </div>

                    </div>
            </div>


            </form>
        </div>
    </div>
</div>