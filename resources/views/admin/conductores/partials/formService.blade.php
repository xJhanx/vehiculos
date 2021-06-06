<div class="card mb-0">

    <form id="formServiceUpdate" method="POST" action="{{ route('servicios.update') }}">
        @csrf
        @method('PATCH')
        <div class="modal-body">
            <div class="row">
                <div class="card-body">
                    <div class="left box-primary">
                        <img class="image"
                            src="https://img.freepik.com/foto-gratis/retrato-sonriente-conductor-furgoneta_53419-6444.jpg?size=626&ext=jpg"
                            alt="" style="width: 200px;" />


                        <h3 class="username text-center">Juan Fernandes</h3>
                        <div class="tab-content mt-3">


                            <div class="right">
                                <div class="form-group">
                                    <label for="inputName" class="control-label">Vehiculo actual:

                                            <a class="btn btn-outline-primary ml-2" href="/vehiculos/TAR-546/edit"
                                                onclick="editarVehiculo('TAR-546')" data-toggle="tooltip" title="">
                                                TAR-546
                                            </a>

                                    </label>
                                </div>
                            </div>

                        </div>

                        <a href="#" class="btn btn-primary btn-block"><b>Editar foto</b></a>
                    </div>
                    <div class="right tab-content mt-3">
                        <div class="form-group">
                            <label for="inputName" class="col-sm-2 control-label">Nombre</label>
                            <div class="col-sm-12">
                                <input type="email" class="form-control" id="inputName" placeholder="Juan Fernandes">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputEmail" class="col-sm-2 control-label">Email</label>
                            <div class="col-sm-12">
                                <input type="email" class="form-control" id="inputEmail"
                                    placeholder="JuanFernandes@tecnoriente.com">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-12 has-feedback">
                                <label for="" class="control-label">Modalidades que deseja
                                    participar</label>
                                <select title="Para escolher várias modalidades, segure a tecla Ctrl"
                                    alt="Para escolher várias modalidades, segure a tecla Ctrl" name="modalidades[]"
                                    class="form-control" multiple="">
                                    <option value="1">Desportivo - Basquete</option>
                                    <option value="2">Desportivo - Futebol Society</option>
                                    <option value="10">Desportivo - Futevolei</option>
                                    <option value="3">Desportivo - Futsal</option>
                                    <option value="5">Desportivo - Handebol</option>
                                    <option value="18">Desportivo - Natação - Borboleta - 25 metros
                                    </option>
                                    <option value="13">Desportivo - Natação - Borboleta - 50 metros
                                    </option>
                                    <option value="17">Desportivo - Natação - Costa - 25 metros
                                    </option>
                                    <option value="12">Desportivo - Natação - Costa - 50 metros
                                    </option>
                                    <option value="19">Desportivo - Natação - Livre - 25 metros
                                    </option>
                                    <option value="14">Desportivo - Natação - Livre - 50 metros
                                    </option>
                                    <option value="16">Desportivo - Natação - Peito - 25 metros
                                    </option>
                                    <option value="11">Desportivo - Natação - Peito - 50 metros
                                    </option>
                                    <option value="20">Desportivo - Natação - Revezamento - 4x25
                                        metros</option>
                                    <option value="15">Desportivo - Natação - Revezamento - 4x50
                                        metros</option>
                                    <option value="7">Desportivo - Queimada</option>
                                    <option value="8">Desportivo - Tênis de Mesa</option>
                                    <option value="6">Desportivo - Volei de Praia</option>
                                    <option value="4">Desportivo - Vôlei de Quadra</option>
                                    <option value="9">Desportivo - Xadrez</option>
                                    <option value="22">Cultural - Festival de Dança - Grupo</option>
                                    <option value="21">Cultural - Festival de Dança - Solo/Dupla
                                    </option>
                                    <option value="26">Cultural - Festival de Fotografia</option>
                                    <option value="24">Cultural - Festival de Intérpretes - Grupo
                                    </option>
                                    <option value="23">Cultural - Festival de Intérpretes -
                                        Solo/Dupla</option>
                                    <option value="27">Cultural - Festival de Redação</option>
                                    <option value="25">Cultural - Festival de Teatro</option>
                                    <option value="28">Jogos Digitais - League of Legends</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-12">
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
