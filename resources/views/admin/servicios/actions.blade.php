<div class="text-lg-right text-nowrap">
    <!-- <a class="btn btn-round btn-sm btn-icon   btn-info edit-cliente" href="javascript:void(0)"  onclick="editarConductor({{$id}})" data-toggle="tooltip"
        title="Editar">
        <i class="fa fa-pen" aria-hidden="true"></i>
    </a>
    <a class="btn btn-round btn-sm btn-icon btn-danger delete-cliente" href="javascript:void(0)" onclick="eliminarConductor({{$id}})" data-toggle="tooltip"
        title="Eliminar">
        <i class="fa fa-fw fa-trash"></i>
    </a> -->


@can('isAdmin')
<a class="btn btn-round btn-sm btn-icon btn-success delete-cliente" href="javascript:void(0)" onclick="verServicio({{$id}})" data-toggle="tooltip"
    title="ver detalles">
    <i class="fa fa-fw fa-eye"></i>
</a>
@endcan
</div>
