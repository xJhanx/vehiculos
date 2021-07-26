<div class="card mb-0">
    <h6 class="text-center p-2 m-2">Cod: <small class="numService font-weight-bold"> </small> </h6>
    <form id="formServiceUpdate" method="POST" action="{{ route('servicios.update') }}">
        @csrf
        @method('PATCH')
        <div class="modal-body">
            <div class="row">

                <div class="row">
                    <div class="col-lg-12">
                        <div class="card card-statistics mt-3">
                            
                            <label class="mt-3">
                            
                            Usuarios 
                                
                            </label>
                            <div class="card-body">
                                <div class="export-table-wrapper table-responsive">
                                    <table class="table table-bordered " style="color:black" id="dataTableServicios"
                                        width="100%" cellspacing="0">
                                        <thead class="thead">
                                            <tr>
                                                <th>S. No</th>
                                                <th>Nombre</th>
                                                <th>Identificacion</th>
                                                <th>Contacto</th>
                                                <th>Cargo</th>
                                                <th>Direccion</th>
                                                <th>Punto inicio</th>
                                                <th>Punto fin </th>
                                                <th>Observaiones</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th>1</th>
                                                <td>Juan Abadia</td>
                                                <td>109632178</td>
                                                <td>312673456</td>
                                                <td>Operador</td>
                                                <td>Barrio la floresta </td>
                                                <td>Entrada la floresta</td>
                                                <td>Puerta norte</td>
                                                <td>Ninguna</td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <th>2</th>
                                                <td>Gabriela ojeda</td>
                                                <td>1096219578</td>
                                                <td>317456732</td>
                                                <td>Camarera</td>
                                                <td>Torcoroma</td>
                                                <td>Parque el angel</td>
                                                <td>Perta norte </td>
                                                <td></td>
                                                <td></td>
                                            </tr>

                                            <tr>
                                                <th>3</th>
                                                <td>Danilo G</td>
                                                <td>10873456</td>
                                                <td>3172603279</td>
                                                <td>Ingeniero</td>
                                                <td>Torcoroma</td>
                                                <td>Parque el angel</td>
                                                <td>Perta norte </td>
                                                <td></td>
                                                <td></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <input type="hidden" name="id">

               

                <div class="form-group col-md-6 mt-4">
                    <label class="text-dark"> Cliente </label>
                    <ul class="list-group" id="cliente">
                        Tecno Oriente LTDA
                    </ul>
                </div>


                <div class="form-group col-md-6 mt-4">
                    <label class="text-dark"> Tipo de Servicio </label>
                    <select name="tipo_id" class="form-control" required>
                        <option value="">Servicio de ruta</option>
                        {{-- @if (isset($tipos) && count($tipos) > 0)
                        @foreach ($tipos as $tipo)
                        <option value="{{$tipo->id}}">{{$tipo->nombre}}</option>
                        @endforeach
                        @else
                        <option>Sin Tipo de Servicios</option>
                        @endif --}}
                    </select>
                </div>

                <div class="form-group col-md-6">
                    <label class="text-dark"> Estado del Servicio </label>
                    <select name="tipo_reparacion" class="form-control" required>
                        <option value="">Finalizado</option>
                        {{-- @if (isset($typereparacions) && count($typereparacions) > 0)
                        @foreach ($typereparacions as $tipo_reparacion)
                        <option value="{{$tipo_reparacion->id}}">{{$tipo_reparacion->nombre}}</option>
                        @endforeach
                        @else
                        <option>Sin Tipo de Reparacions</option>
                        @endif --}}
                    </select>
                </div>

              

                <div class="form-group col-md-6">
                    <label class="text-dark">Fecha registro de servicio</label>
                    <input type="date" readonly class="form-control" required name="fecha_inicio">
                </div>

              
                <div class="form-group col-md-6">
                    <label class="text-dark">Fecha Autorizado</label>
                    <input type="date" class="form-control" name="fecha_autorizado">
                </div>

              

               

                <div class="form-group col-md-6">
                    <label class="text-dark">Valor Aprobado </label>
                    <input type="number" class="form-control" name="valor_aprobado">
                </div>

                <div class="form-group col-md-6">
                    <label class="text-dark">Valor Cotizado </label>
                    <input type="number" class="form-control" name="valor_cotizado">
                </div>


                <div class="form-group col-md-6">
                    <label class="text-dark">Valor Gastos </label>
                    <input type="text" readonly class="form-control" name="valor_gastos">
                </div>

                <div class="form-group col-md-6">
                    <label class="text-dark">Valor Adicionales </label>
                    <input type="text" readonly class="form-control" name="valor_adicionales">
                </div>


                <div class="form-group col-md-6">
                    <label class="text-dark"> Happy Call Estado </label>
                    <select name="happycall_estado" class="form-control" required>
                        @if (isset($happycallestados) && count($happycallestados) > 0)
                            @foreach ($happycallestados as $happycallestado)
                                <option value="{{ $happycallestado->id }}">{{ $happycallestado->nombre }}</option>
                            @endforeach
                        @else
                            <option>Sin Happy Call Estado</option>
                        @endif
                    </select>
                </div>




                <div class="form-group col-md-12">
                    <label class="text-dark">Obsevaciones </label>
                    <textarea type="text" cols="15" class="form-control" name="observacion_happycallestado"></textarea>
                </div>




                <div class="form-group col-md-6">
                    <input type="submit" class="btn btn-outline-info  btn-sm " id="btnUpdateService" value="Enviar">
                </div>
            </div>
        </div>
    </form>
</div>
