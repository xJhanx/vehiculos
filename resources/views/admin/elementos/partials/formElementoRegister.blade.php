<!-- section nuevo mantenimiento  -->
<div class="modal fade --" tabindex="-1" role="dialog" data-backdrop="static" data-ajax-modal
    id="modalElementoRegister">
    <div class="modal-dialog modal-lg " role="document">
        <div class="modal-content ">
            <div class="card-header text-dark">Registrar Elemento
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <div class="card-body">

                <form id="formElementoRegister" method="POST" action="{{route('elementos.store')}}">
                    @csrf
                    <div class="modal-body">
                        <div class="row">

                            <input type="hidden" name="vehiculo_placa" value="{{$vehiculo->placa}}">


                            <div class="form-group col-md-12">
                                <label class="text-dark" for="tipo">Elemento del tipo </label>

                                <select class="custom-select form-control" name="tipo" tag="tipo">
                                    <option disabled selected>Selecciona</option>
                                    <option value="Ambiental">Ambiental </option>
                                    <option value="Kit de carretera">Kit de carretera </option>
                                    <option value="Botiquin"> Botiquin </option>
                                    <option value="Extintor"> Extintor </option>
                                    <option value="Herramienta"> Herramienta </option>
                                </select>

                            </div>

                            <div class="form-group col-md-12">
                                <label class="text-dark" for="descripcion"> Descripcion </label>

                                <select class="selectpicker form-control select-modalElementoRegister-estado" data-live-search="true" name="descripcion"
                                    tag="descripcion">

                                    <optgroup label="Kit de carretera">
                                        <option value="Chaleco reflectivo"> Chaleco reflectivo </option>
                                        <option value="Guantes"> Guantes </option>
                                        <option value="Conos"> Conos </option>
                                        <option value="Tacos"> Tacos </option>
                                        <option value="Linterna"> Linterna </option>
                                        <option value="Linterna recargable"> Linterna recargable </option>
                                        <option value="Gato hidraulico"> Gato hidraulico </option>
                                        <option value="Llanta de repuesto"> Llanta de repuesto </option>
                                    </optgroup>

                                    <optgroup label="Botiquin">
                                        <option value="Inmobilizador maleable"> Inmobilizador maleable </option>
                                        <option value="Inmobilizador cervical"> Inmobilizador cervical </option>
                                        <option value="Vendas triangulares"> Vendas triangulares </option>
                                        <option value="Compresas"> Compresas </option>
                                        <option value="Mascarilla facial de bolsillo"> Mascarilla facial de bolsillo
                                        </option>
                                        <option value="Vendas elasticas"> Vendas elasticas </option>
                                        <option value="Gasa Aseptica"> Gasa Aseptica </option>
                                        <option value="Guantes de lates"> Guantes de lates </option>
                                        <option value="Espadradrapo en tela"> Espadradrapo en tela </option>
                                        <option value="Tijeras"> Tijeras </option>
                                        <option value="Bolso lona para botiquin"> Bolso lona para botiquin </option>
                                        <option value="Mascarilla de RCCP"> Mascarilla de RCCP </option>

                                    </optgroup>

                                    <optgroup label="Extintor">
                                        <option value="Extintor"> Extintor </option>
                                    </optgroup>


                                    <optgroup label="Herramienta">
                                        <option value="Llave de expansion"> Llave de expansion </option>
                                        <option value="Juego de llaves boca-fija"> Juego de llaves boca-fija </option>
                                        <option value="Llaves"> Llaves </option>
                                        <option value="Llave de perno"> Llave de perno </option>
                                        <option value="Cruceta o llave en L"> Cruceta o llave en L </option>
                                    </optgroup>


                                    <optgroup label="Ambiental">
                                        <option value="Acerrin"> Acerrin </option>
                                        <option value="Bolsa de basura"> Bolsa de basura </option>
                                        <option value="Pala antichispa"> Pala antichispa </option>
                                        <option value="Recogedor plastico manual"> Recogedor plastico manual </option>
                                        <option value="Tapabocas individual plastificado"> Tapabocas individuales
                                            plastificados </option>
                                        <option value="Tela oleofilica"> Tela oleofilica </option>
                                    </optgroup>
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

                    <div class="form-group col-md-3">
                        <input type="submit" class="btn btn-outline-info " id="btnSaveElemento" value="Enviar">
                        <button type="button" class="btn btn-outline-dark" data-dismiss="modal">Cancel</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
