<!-- section nuevo mantenimiento  -->
<div class="modal fade --" tabindex="-1" role="dialog" data-backdrop="static" data-ajax-modal
    id="modalElementoUpdate">
    <div class="modal-dialog modal-lg " role="document">
        <div class="modal-content ">
            <div class="card-header text-dark">Actualizar Elemento
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <div class="card-body">

                <form id="formElementoUpdate" action="{{route('elementos.update')}}">
                    @csrf
                    @method('PATCH')
                    <div class="modal-body">
                        <div class="row">

                            <input type="hidden" name="id" id="id">

                            <div class="form-group col-md-12">
                                <label class="text-dark" for="tipo">Elemento del tipo </label>

                                <select class="custom-select form-control" name="tipo" tag="tipo">
                                    <option disabled selected>Selecciona</option>
                                    <option value="seguridad"> De seguridad </option>
                                    <option value="Kit de carretera"> Kit de carretera </option>
                                    <option value="Herramienta"> Herramienta </option>
                                    <option value="Ambiental"> Ambiental </option>
                                    <option value="Botiquin"> Botiquin </option>
                                </select>

                            </div>

                            <div class="form-group col-md-12">
                                <label class="text-dark" for="descripcion"> Descripcion </label>

                                <select class="custom-select form-control select-modalElementoUpdate-estado" name="descripcion" tag="descripcion">
                                    <option disabled selected>Selecciona</option>
                                    <option value="Acerrin"> Acerrin </option>
                                    <option value="Alicate"> Alicate </option>
                                    <option value="Bolsa de basura"> Bolsa de basura </option>
                                    <option value="Bolso lona para botiquin"> Bolso lona para botiquin </option>
                                    <option value="Chaleco reflectivo"> Chaleco reflectivo </option>
                                    <option value="Compresas"> Compresas </option>
                                    <option value="Conos"> Conos </option>
                                    <option value="Cruceta o llave en L"> Cruceta o llave en L </option>
                                    <option value="Destornillador de estrella"> Destornillador de estrella </option>
                                    <option value="Destornillador de pala"> Destornillador de pala </option>
                                    <option value="Espadradrapo en tela"> Espadradrapo en tela </option>
                                    <option value="Gasa Aseptica"> Gasa Aseptica </option>
                                    <option value="Gato hidraulico"> Gato hidraulico </option>
                                    <option value="Guantes de lates"> Guantes de lates </option>
                                    <option value="Inmobilizador maleable"> Inmobilizador maleable </option>
                                    <option value="Inmobilizador cervical"> Inmobilizador cervical </option>
                                    <option value="Juego de llaves boca-fija"> Juego de llaves boca-fija </option>
                                    <option value="Linterna recargable"> Linterna recargable </option>
                                    <option value="Llanta de repuesto"> Llanta de repuesto </option>
                                    <option value="Llave de expansion"> Llave de expansion </option>
                                    <option value="Mascarilla de RCCP"> Mascarilla de RCCP </option>
                                    <option value="Pala antichispa"> Pala antichispa </option>
                                    <option value="Recogedor plastico manual"> Recogedor plastico manual </option>
                                    <option value="Tacos"> Tacos </option>
                                    <option value="Tapabocas individual plastificado"> Tapabocas individuales
                                        plastificados </option>
                                    <option value="Tela oleofilica"> Tela oleofilica </option>
                                    <option value="Tijeras"> Tijeras </option>
                                    <option value="Vendas elasticas"> Vendas elasticas </option>
                                    <option value="Vendas triangulares"> Vendas triangulares </option>

                                </select>

                            </div>


                            <div class="form-group col-md-6">
                                <label class="text-dark" for="disponibilidad">Disponible</label>
                                <select class="custom-select  form-control" ="" name="disponibilidad"
                                    tag="disponibilidad">
                                    <option value="Si">Si</option>
                                    <option value="No">No</option>
                                    <option value="Incompleto">Inclompleto</option>

                                </select>
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark" for="cantidad">Cantidad</label>
                                <input type="number" name="cantidad" tag="cantidad" class="form-control">
                            </div>

                            <div class="form-group col-md-12">
                                <label class="text-dark" for="observacion">Recomendacion
                                </label>
                                <textarea type="text" name="observacion" tag="observacion"
                                    class="form-control"></textarea>
                            </div>
                        </div>

                    </div>
            </div>

            <div class="form-group col-md-3">
                <input type="submit" class="btn btn-outline-info " id="btnUpdateElemento" value="Enviar">
                <button type="button" class="btn btn-outline-dark" data-dismiss="modal">Cancel</button>
            </div>
            </form>

        </div>
    </div>
</div>
