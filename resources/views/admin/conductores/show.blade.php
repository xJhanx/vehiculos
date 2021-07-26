@extends('layouts.app')
@section('content')


<div class="ml-auto d-flex align-items-center secondary-menu text-center m-2">

    <a href="javascript:history.back()" class="tooltip-wrapper btn btn-circle btn-success mr-1" title=""
        data-original-title="Regresar">
        <i class="mr-2 fa fa-reply " aria-hidden="true"></i>
    </a>

    <a href="javascript:void(0)" class="tooltip-wrapper btn btn-circle btn-primary mr-1" data-toggle="modal"
        data-placement="top" data-target="#modalConductorContactRegister" title="Registrar">
        <i class="fa fa-fw fa-plus"></i>
    </a>

    <!--<a href="javascript:void(0)" class="tooltip-wrapper btn btn-circle btn-primary mr-1" data-toggle="modal"-->
    <!--    data-placement="top" data-target="#modalsms" title="sms">-->
    <!--    <i class="fa fa-fw fa-sms"></i>-->
    <!--</a>-->

</div>

<div class="container-custom">
    <ul class="tabs">

        <li class="item-custom text-center active-custom">Perfil</li>
        <li class="item-custom text-center">Contactos</li>
        <li class="item-custom text-center">Documentacion</li>
        <li class="item-custom text-center">Servicios</li>
        <li class="item-custom text-center">Vehiculos</li>

    </ul>

    <div class="panels">

        <div class=" panels-item  active-panels">
            @include('admin.conductores.partials.perfil')
        </div>

        <div class=" panels-item ">
            @include('admin.conductores.partials.contactos')
        </div>

        <div class=" panels-item ">
            @include('admin.conductores.partials.evidencias')
        </div>

        <div class=" panels-item ">
            @include('admin.conductores.partials.servicios')
        </div>
        
        <div class=" panels-item ">
            @include('admin.conductores.partials.vehiculos')
        </div>

        <div class=" panels-item ">
        </div>

        <div class=" panels-item ">
        </div>
    </div>

</div>

@include('admin.conductores.partials.formRegister')
@include('admin.conductores.partials.formRegisterContact')
@include('admin.conductores.partials.formEvidenciaRegister')

@stop

@section('scripts')

<script>
    let conductor = @JSON($conductor);
</script>
<script src="{{ asset('/js/custompanels.js') }}"></script>
<script src="{{ asset('/js/apiContacts.js') }}"></script>
<script src="{{ asset('/js/apiEvidencia.js') }}"></script>
<script src="{{ asset('/js/evidenciaCarga.js') }}"></script>
<script>
    (function(){
        evidenciaCharge();
    })();
</script>

<script>
    const selectElement = document.querySelector('#estadoService');

   selectElement.addEventListener('change', (event) => {
         console.log(event.target.value);
         console.log(event.target.attribute.service);
});

</script>

@endsection