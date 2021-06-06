<div class="text-lg-right text-nowrap">
    <a class="btn btn-round btn-sm btn-icon btn-info " href="javascript:void(0)"  onclick="editarVehiculo('{{$placa}}')" data-toggle="tooltip"
        title="Editar">
        <i class="fa fa-pen" aria-hidden="true"></i>
    </a>
    <a class="btn btn-round btn-sm btn-icon btn-danger " href="javascript:void(0)" onclick="eliminarVehiculo({{$id}})" data-toggle="tooltip"
        title="Eliminar">
        <i class="fa fa-fw fa-trash"></i>
    </a>
</div>
