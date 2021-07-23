<div class="modal fade --" tabindex="-1" role="dialog" data-backdrop="static" data-ajax-modal id="modalClienteCompanyRegister">
    <div class="modal-dialog modal-lg " role="document">
        <div class="modal-content ">

            <div class="card-header text-dark">Registrar Compañia
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <div class="card-body">

                <form id="formClienteCompanyRegister" method="POST" action="{{route('clientescompany.store')}}">
                    @csrf
                    <div class="modal-body">
                        <div class="row">

                            <div class="form-group col-md-6">
                                <label class="text-dark"> Nombre Empresa </label>
                                <input type="text" class="form-control" name="nombre" placeholder="">
                            </div>
                            

                            <div class="form-group col-md-6">
                                <label class="text-dark">Tipo de Identificación</label>
                                <select class="form-control" name="tipo_identificacion">
                                    <option disabled selected> Selecciona...</option>
                                    <option value="Nit">Nit</option>
                                    <option value="Otro">Otro</option>
                                </select>
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark"># Identificacion</label>
                                <input type="number" class="form-control" name="identificacion" placeholder="">
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark">Mail </label>
                                <input type="email" class="form-control" name="email" placeholder="E-mail">
                            </div>


                            <div class="form-group col-md-6">
                                <label class="text-dark">Numero Contrato</label>
                                <input type="text" class="form-control" name="num_contrato" placeholder="">
                            </div>
                            
                            <div class="form-group col-md-6">
                                <label class="text-dark">Objeto Contrato</label>
                                <input type="text" class="form-control" name="obj_contrato" placeholder="">
                            </div>
                            
                            <div class="form-group col-md-6">
                                <label class="text-dark">Fecha inicio contrato</label>
                                <input type="date" class="form-control"  name="inicio_contrato" placeholder="">
                            </div>
                            
                            <div class="form-group col-md-6">
                                <label class="text-dark">Fecha fin contrato</label>
                                <input type="date" class="form-control"  name="fin_contrato" placeholder="">
                            </div>
                            
                            <div class="form-group col-md-6">
                                <label class="text-dark">Fecha renovación contrato</label>
                                <input type="date" class="form-control"  name="renovacion_contrato" placeholder="">
                            </div>
                            
                             <div class="form-group col-md-6">
                                <label class="text-dark">Nombre del administrador del contrato </label>
                                <input type="text" class="form-control" name="admin" placeholder="">
                            </div>
                            
                            <div class="form-group col-md-6">
                                <label class="text-dark">Ciudad</label>
                                <input type="text" class="form-control" name="ciudad" placeholder="">
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark">Departamento</label>
                                <input type="text" class="form-control" name="departamento" placeholder="">
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark">Dirección</label>
                                <input type="text" class="form-control" name="direccion" placeholder="">
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark">Barrio</label>
                                <input type="text" class="form-control" name="barrio" placeholder="">
                            </div>

                            <div class="form-group col-md-9">
                                <label class="text-dark">Contacto del administrador del contrato </label>
                                <input type="phone" class="form-control" name="telefono" placeholder="">
                            </div>

                            <div class="form-group col-md-3">
                                <label class="text-dark">Telefono (opcional)</label>
                                <input type="phone" class="form-control" name="opcional_telefono" placeholder="">
                            </div>

                            <div class="form-group">
                                <input type="submit" class="btn btn-outline-info " id="btnSaveClienteCompany" value="Enviar">
                                <button type="button" class="btn btn-outline-dark" data-dismiss="modal">Cancel</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>