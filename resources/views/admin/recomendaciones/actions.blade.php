<div class="text-lg-right text-nowrap">
    <a class="btn btn-round btn-sm btn-icon btn-sm  btn-info " href="javascript:void(0)"  onclick="editarRecomendacion('{{$id}}')" data-toggle="tooltip"
        title="Editar">
        <i class="fa fa-pen" aria-hidden="true"></i>
    </a>
    <a class="btn btn-round btn-sm btn-icon btn-sm  btn-danger " href="javascript:void(0)"  onclick="eliminarRecomendacion('{{$id}}')" data-toggle="tooltip"
        title="Editar">
        <i class="fa fa-pencil fa-trash" aria-hidden="true"></i>
    </a>

    <a  class="btn btn-round btn-icon btn-success edit-vehiculo btn-sm" href="{{route('ejecutados',$id)}}"
    title="Historial">
    <i class="fa fa-calendar fa-fw" aria-hidden="true"></i>
</a>

</div>
