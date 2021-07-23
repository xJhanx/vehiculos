<div class="card mb-0">

    <form id="formConductorUpdate" method="POST" action="{{ route('conductores.update') }}">
        @csrf
        @method('PATCH')
        <div class="modal-body">
            <div class="row">
                <div class="card-body">
                    <div class="left box-primary">
                        <img class="image"
                            src="https://img.freepik.com/foto-gratis/retrato-sonriente-conductor-furgoneta_53419-6444.jpg?size=626&ext=jpg"
                            alt="" style="width: 200px;" />

                        <h3 class="username text-center">{{$conductor->nombre}} {{$conductor->apellido}}</h3>
                        <div class="tab-content mt-3">


                            <div class="right">
                                <div class="form-group">
                                    <label for="inputName" class="control-label">Vehiculos:

                                        @foreach($conductor->vehiculos as $vehiculo)
                                        <a class="btn btn-outline-primary ml-2" href="/vehiculos/{{$vehiculo->placa}}/edit"
                                            onclick="editarVehiculo('{{$vehiculo->placa}}')" data-toggle="tooltip" title="">
                                            {{$vehiculo->placa}}
                                        </a>
                                        @endforeach

                                    </label>
                                </div>
                            </div>

                        </div>

                        <a href="#" class="btn btn-primary btn-block"><b>Editar foto</b></a>
                    </div>
                    <div class="right tab-content mt-3">


                        <div class="row">

                            <input type="hidden" value=" {{$conductor->id}}" name="id" id="id">

                            <div class="form-group col-md-6">
                                <label class="text-dark"> Nombres </label>
                                <input type="text" class="form-control" value="{{$conductor->nombre}}" name="nombre"
                                    placeholder="nombre">
                            </div>
                            <div class="form-group col-md-6">
                                <label class="text-dark">Apellidos </label>
                                <input type="text" class="form-control" value="{{$conductor->apellido}}" name="apellido"
                                    placeholder="Last Name">
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark">Tipo de Identificación</label>
                                <select class="form-control" value="{{$conductor->tipo}}" name="tipo_identificacion">
                                    <option disabled selected> Selecciona...</option>
                                    <option value="Cedula">Cedula</option>
                                    <option value="Passport">Passport</option>
                                    <option value="Nit">Nit</option>
                                    <option value="Otro">Otro</option>
                                </select>
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark"># Identificacion</label>
                                <input type="number" class="form-control" value="{{$conductor->identificacion}}"
                                    name="identificacion" placeholder="">
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark">Mail </label>
                                <input type="email" class="form-control" value="{{$conductor->email}}" name="email"
                                    placeholder="E-mail">
                            </div>


                            <div class="form-group col-md-6">
                                <label class="text-dark">Ciudad</label>
                                <input type="text" class="form-control" value="{{$conductor->ciudad}}" name="ciudad"
                                    placeholder="ciudad">
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark">Departamento</label>
                                <input type="text" class="form-control" value="{{$conductor->departamento}}"
                                    name="departamento" placeholder="Dpto">
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark">Dirección</label>
                                <input type="text" class="form-control" value="{{$conductor->direccion}}"
                                    name="direccion" placeholder="Address">
                            </div>

                            <div class="form-group col-md-6">
                                <label class="text-dark">Barrio</label>
                                <input type="text" class="form-control" value="{{$conductor->barrio}}" name="barrio"
                                    placeholder="Barrio">
                            </div>

                            <div class="form-group col-md-3">
                                <label class="text-dark">Telefono</label>
                                <input type="phone" class="form-control" value="{{$conductor->telefono}}"
                                    name="telefono" placeholder="Telefono">
                            </div>

                            <div class="form-group col-md-3">
                                <label class="text-dark">Telefono (opcional)</label>
                                <input type="phone" class="form-control" value="{{$conductor->opcional_telefono}}"
                                    name="opcional_telefono" placeholder="Telefono ">
                            </div>

                        </div>

                    </div>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <button type="submit" class="btn btn-danger">Actualizar</button>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </form>
</div>

@push('scripts')

<script>
    // // Traer datos de cliente
        // function editarVehiculo(ente_id) {
        //     var url = '/vehiculos/' + ente_id + '/edit'
        //     window.location.href = url;
        // };

</script>
@endpush