<div class="row">
    <div class="col-lg-12">
        <div class="card card-statistics mt-3">

            @can('isManagmentPassengers')
            <label class=" text text-center mt-5">

                Usuarios

                <a href="javascript:void(0)" class="tooltip-wrapper" data-toggle="modal" data-placement="top"
                    data-target="#modalPassengerRegister" title="Registrar">
                    <i class="fa fa-edit btn btn-icon text-info"></i>
                </a>

                <a href="javascript:void(0)" class="tooltip-wrapper btn btn-circle btn-primary mr-1" data-toggle="modal"
                    data-placement="top" data-target="#modalShowDirectory" title="agregar desde el directorio ">
                    <i class="fa fa-folder-open"></i>
                </a>

            </label>
            
            @endcan
            
            <div class="card-body">
                <div class="export-table-wrapper table-responsive">
                    <table class="table table-bordered " style="color:black" id="dataTablePassengersOnService"
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

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>