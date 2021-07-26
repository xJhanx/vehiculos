<div class="card">

    <form id="formAddVehiculoRegister" method="POST" action="{{route('appendvehiculo')}}">
        @csrf
        <div class="card-body">
            <div class="row">

                <input type="hidden" name="conductor_id" value="{{$conductor->id}}"></input>

                <div class="form-group col-md-12">
                    <label class="text-dark">Vehiculo</label>
                    <select class="form-control selectoncards" style="width:100%" data-live-search="true" name="placa">
                        <option disabled selected> Selecciona...</option>
                         @foreach ($vehiculos as $item)
                          <option value="{{$item->id}}">{{$item->placa }}</option>
                        @endforeach
                    </select>
                </div>


                <div class="form-group mx-3">
                    <input type="submit" class="btn btn-outline-info " id="btnSaveAddVehiculo" value="Vincular vehiculo">
                </div>
            </div>
        </div>
    </form>


    <div class="w-100 my-3"></div>
    <div class="card mb-0">
        <div class="table-responsive p-3">

        <table class="table table-bordered " style="color:black" id="dataTableMisVehiculos" width="100%" cellspacing="0">
                <thead class="thead">
                    <tr>
                        <th>Placa</th>
                        <th>Modelo</th>
                        <th>Estado</th>
                    </tr>
                    
                    @foreach ($conductor->vehiculos as $item)
                    <tr>
                        <th>{{$item->placa}}</th>
                        <th>{{$item->modelo}}</th>
                        <th>{{$item->estado}}</th>
                    </tr>
                    @endforeach
                    
                </thead>
            </table>
        </div>
    </div>

</div>