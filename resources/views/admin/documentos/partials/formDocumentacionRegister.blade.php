<!-- section nuevo mantenimiento  -->
<div class="modal fade --" tabindex="-1" role="dialog" data-backdrop="static" data-ajax-modal
    id="modalDocumentacionRegister">
    <div class="modal-dialog modal-lg " role="document">
        <div class="modal-content ">
            <div class="card-header text-dark"> Subir documento
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="card-body">
                <form id="formDocumentoRegister" method="POST" action="{{route('documentos.store')}}" enctype="multipart/form-data">
                    @csrf
                    <div class="modal-body">
                        <div class="row">

                            <div class="col-md-12 mb-12">
                                <label class="text-dark" for="file-upload" class="btn btn-success" style="cursor: pointer">
                                    <i class="fa fa-cloud"></i> Selecciona Archivo
                                </label>
                                <input id="file-upload" name="file" type="file"
                                    style='display: none;' />
                                <div id="info"></div>
                            </div>

                            <input type="hidden" name="vehiculo_id" id="vehiculo_id" value="{{$vehiculo->id}}">

                            <div class="col-md-12 mb-12">
                                <label class="text-dark label-control" class="btn btn-success">
                                    Descripción
                                </label>
                                <input type="text" name="descripcion" class="form-control" placeholder="...">
                            </div>
                        </div>
                    </div>
                    <div class="form-group col-md-3">
                        <input type="submit" class="btn btn-outline-info " id="btnSaveDocumento" value="Enviar">
                        <button type="button" class="btn btn-outline-dark" data-dismiss="modal">Cancel</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

