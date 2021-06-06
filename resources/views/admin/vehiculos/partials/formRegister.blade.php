<div class="modal fade --" tabindex="-1" role="dialog" data-backdrop="static" data-ajax-modal
    id="modalVehiculoRegister">
    <div class="modal-dialog modal-lg " role="document">
        <div class="modal-content ">

            <div class="card-header text-dark">Registrar Vehiculos
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <div class="card-body">

                <form id="formVehiculoRegister" method="POST" action="{{route('vehiculos.store')}}">
                    @csrf
                    <div class="modal-body">
                        <div class="row">

                            <div class="form-group col-md-6">
                                <label class="text-dark" for="propietario_id">Propietario</label>
                                <select class="select-modalVehiculoRegister-propietario form-control"
                                    data-live-search="true" ="" name="propietario_id">
                                    @foreach ($propietarios as $item)
                                    <option value="{{$item->id}}">{{$item->fullname }}</option>
                                    @endforeach
                                </select>
                            </div>

                            <div class="form-group col-md-3">
                                <label class="text-dark" for="placa">Placa</label>
                                <input type="text" ="" name="placa" class="form-control">
                            </div>

                            <div class="form-group col-md-3">
                                <label class="text-dark" for="estado">Estado de vehiculo</label>
                                <select class="select-modalVehiculoRegister-estado form-control" =""
                                    name="estado">
                                    <option value="Activo">Activo
                                    </option>
                                    <option value="Inactivo">Inactivo</option>
                                </select>
                            </div>

                            <div class="form-group col-md-12">
                                <div class="bg-secondary row-fluid ">
                                    <legend class=" text-center text-white text-md" style="font-size:0.8em"><small
                                            style="font-weight:bold;"> ... </small></legend>
                                </div>
                            </div>


                            <div class="form-group col-md-4">
                                <label class="text-dark" for="tipo_vehiculo">Tipo de vehiculo</label>
                                <select class="select-modalVehiculoRegister-tipo form-control" data-live-search="true"
                                    ="" name="tipo_vehiculo">

                                    <option value="Camioneta">
                                        Camioneta</option>
                                    <option value="Buseta">
                                        Buseta</option>
                                    <option value="Bus">
                                        Bus</option>
                                    <option value="Microbus">
                                        Microbus</option>
                                    <option value="Carrotanque">
                                        Carrotanque</option>
                                    <option value="Maquinaria amarilla">
                                        Maquinaria amarilla</option>
                                    <option value="Camion">
                                        Camion</option>

                                </select>

                            </div>

                            <div class="form-group col-md-4">
                                <label class="text-dark" for="marca">Marca</label>
                                <input type="text" ="" name="marca" class="form-control">
                            </div>

                            <div class="form-group col-md-4">
                                <label class="text-dark" for="modelo">Modelo</label>
                                <input type="text" ="" name="modelo" id="modelo" class="form-control">
                            </div>

                            <div class="form-group col-md-4">
                                <label class="text-dark" for="tipo_servicio">Tipo de servicio</label>
                                <select class="custom-select form-control" ="" name="tipo_servicio">
                                    <option value="Particular"> Particular</option>
                                    <option value="Publico"> Publico</option>
                                </select>
                            </div>


                            <div class="form-group col-md-4">
                                <label class="text-dark" for="serie">Serie de vehiculo </label>
                                <input type="text" ="" name="serie" class="form-control">
                            </div>

                            <div class="form-group col-md-4">
                                <label class="text-dark" for="cilindraje">Cilindraje</label>
                                <input type="text" ="" name="cilindraje" class="form-control">
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark" for="color">Color</label>
                                <input type="text" ="" name="color" class="form-control">
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark" for="tipo_combustible">Tipo de combustible</label>
                                <select class="select-modalVehiculoRegister-combustible form-control"
                                    data-live-search="true" ="" name="tipo_combustible">
                                    <option value="Diesel"> Diesel</option>
                                    <option value="Gasolina">Gasolina</option>
                                </select>
                            </div>


                            <div class="form-group col-md-4">
                                <label class="text-dark" for="capacidad_pasajeros">Capacidad de Pasajeros</label>
                                <input type="text" name="capacidad_pasajeros" class="form-control">
                            </div>

                            <div class="form-group col-md-4">
                                <label class="text-dark" for="capacidad_litros">Capacidad en litros</label>
                                <input type="text" onkeyup="puntitos(this,this.value.charAt(this.value.length-1))"
                                    name="capacidad_litros" class="form-control">
                            </div>

                            <div class="form-group col-md-4">
                                <label class="text-dark" for="capacidad_toneladas">Capacidad en toneladas</label>
                                <input type="text" onkeyup="puntitos(this,this.value.charAt(this.value.length-1))"
                                    name="capacidad_toneladas" class="form-control">
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark" for="numero_licencia"> Matricula </label>
                                <input type="text"  name="numero_licencia"
                                    class="form-control">
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark" for="fecha_licencia">Fecha de matricula</label>
                                <input type="date"  name="fecha_licencia"
                                    class="form-control">
                            </div>


                            <div class="form-group col-md-12">
                                <div class="bg-secondary row-fluid ">
                                    <legend class=" text-center text-white text-md" style="font-size:0.8em"><small
                                            style="font-weight:bold;"> ... </small></legend>
                                </div>
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark" for="numero_tarjeta_operaciones"># De Tarjeta
                                    Operaciones </label>
                                <input type="text" name="numero_tarjeta_operaciones"
                                    class="form-control">
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark" for="vigencia_tarjeta_operaciones">Vencimiento</label>
                                <input type="date" name="vigencia_tarjeta_operaciones"
                                    class="form-control">
                            </div>


                            <div class="form-group col-md-6">
                                <label class="text-dark" for="numero_tecnomecanica"># De Tecnomecanica</label>
                                <input type="text" ="" name="numero_tecnomecanica" class="form-control">
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark" for="vigencia_tecnomecanica">Vcto Tecnomecanica</label>
                                <input type="date" ="" name="vigencia_tecnomecanica"
                                    class="form-control">
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark" for="numero_soat"># De Soat</label>
                                <input type="text" ="" name="numero_soat" class="form-control">
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark" for="vigencia_soat">Vcto Soat</label>
                                <input type="date" ="" name="vigencia_soat" class="form-control">
                            </div>


                            <div class="form-group col-md-12">
                                <div class="bg-secondary row-fluid ">
                                    <legend class=" text-center text-white text-md" style="font-size:0.8em"><small
                                            style="font-weight:bold;"> ... </small></legend>
                                </div>
                            </div>

                            <div class="form-group col-md-4">
                                <label class="text-dark" for="aseguradora_poliza_tr">Aseguradora Poliza todo Riesgo
                                </label>
                                <input type="text" name="aseguradora_poliza_tr" class="form-control">
                            </div>

                            <div class="form-group col-md-4">
                                <label class="text-dark" for="numero_poliza_tr"># Poliza todo Riesgo</label>
                                <input type="text" name="numero_poliza_tr" class="form-control">
                            </div>

                            <div class="form-group col-md-4">
                                <label class="text-dark" for="vigencia_poliza_tr">Vcto Poliza todo Riesgo</label>
                                <input type="date" name="vigencia_poliza_tr" class="form-control">
                            </div>


                            <div class="form-group col-md-4">
                                <label class="text-dark" for="aseguradora_poliza_ct">Aseguradora Poliza contractual
                                </label>
                                <input type="text" name="aseguradora_poliza_ct" class="form-control">
                            </div>

                            <div class="form-group col-md-4">
                                <label class="text-dark" for="numero_poliza_ct"># Poliza contractual</label>
                                <input type="text" name="numero_poliza_ct" class="form-control">
                            </div>

                            <div class="form-group col-md-4">
                                <label class="text-dark" for="vigencia_poliza_ct">Vcto Poliza contractual</label>
                                <input type="date" name="vigencia_poliza_ct" class="form-control">
                            </div>


                            <div class="form-group col-md-4">
                                <label class="text-dark" for="aseguradora_poliza_ex_ct">Aseguradora Poliza extra
                                </label>
                                <input type="text" name="aseguradora_poliza_ex_ct" class="form-control">
                            </div>

                            <div class="form-group col-md-4">
                                <label class="text-dark" for="numero_poliza_ex_ct"># Poliza extra contractual</label>
                                <input type="text" name="numero_poliza_ex_ct" class="form-control">
                            </div>

                            <div class="form-group col-md-4">
                                <label class="text-dark" for="vigencia_poliza_ex_ct">Vcto Poliza extra
                                    contractual</label>
                                <input type="date" name="vigencia_poliza_ex_ct" class="form-control">
                            </div>


                            <div class="form-group col-md-12">
                                <div class="bg-secondary row-fluid ">
                                    <legend class=" text-center text-white text-md" style="font-size:0.8em"><small
                                            style="font-weight:bold;"> ... </small></legend>
                                </div>
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark" for="gps">Plataforma GPS</label>
                                <select class="form-control" data-live-search="true" name="gps">
                                    <option value="Si">Si</option>
                                    <option value="No">No</option>
                                </select>
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark" for="botiquin">Botiquin</label>
                                <select class="form-control" data-live-search="true" name="botiquin">
                                    <option value="Si">Si</option>
                                    <option value="No">No</option>
                                    <option value="Incompleto">Incompleto</option>
                                </select>
                            </div>

                            <div class="form-group col-md-12">
                                <label class="text-dark" for="recomendacion">Recomendacion
                                </label>
                                <textarea type="text" name="recomendacion" class="form-control"></textarea>
                            </div>

                            <div class="form-group">
                                <input type="submit" class="btn btn-outline-info " id="btnSaveVehiculo" value="Enviar">
                                <button type="button" class="btn btn-outline-dark" data-dismiss="modal">Cancel</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
