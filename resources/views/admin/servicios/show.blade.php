@extends('layouts.app')
@section('content')


<div class="ml-auto d-flex align-items-center secondary-menu text-center m-2">

    <a href="javascript:history.back()" class="tooltip-wrapper btn btn-circle btn-success mr-1" title=""
        data-original-title="Regresar">
        <i class="mr-2 fa fa-reply " aria-hidden="true"></i>
    </a>

    <a href="javascript:void(0)" class="tooltip-wrapper btn btn-circle btn-primary mr-1" data-toggle="modal"
        data-placement="top" data-target="#modalsms" title="sms">
        <i class="fa fa-fw fa-sms"></i>
    </a>

</div>

<div class="container-custom">
    <ul class="tabs">

        <li class="item-custom text-center active-custom">Pasajeros</li>
        <li class="item-custom text-center">Servicio</li>

    </ul>

    <div class="panels">

        <div class=" panels-item  active-panels">
            @include('admin.servicios.partials.detalleService')
            @include('admin.passengers.partials.modalShowDirectory')
        </div>

        <div class="panels-item">
            @can('isViewService')
            @include('admin.servicios.partials.formViewService')
            @endcan
            @can('isSuperGerente')
            @include('admin.servicios.partials.formUpdate')
            @endcan
        </div>

    </div>

            @include('admin.passengers.partials.formRegister')

</div>

@stop

@section('scripts')
<script src="{{ asset('/js/custompanels.js') }}"></script>
<script src="{{ asset('/js/chargeInfoSolicitud.js') }}"></script>
<script src="{{ asset('/js/chargePassengersOnService.js') }}"></script>

<script>
    const idService = document.getElementById('id_servicio').value=window.location.pathname.split('/')[3];

    let passengersSelected = [];
    
    function saveCheck(id){

        if (passengersSelected.length > 0 ) {

           let passenger = passengersSelected.indexOf(id);

          if (passenger > -1) {
             passengersSelected.splice(passenger, 1);
         }else{
             passengersSelected.push(id)
         }
        }else{
            passengersSelected.push(id)
        }
    }
    
</script>

{{-- <script defer>
    const divPassengers = document.getElementById("checkPassengers");
    
    fetch('/passengers', {
    method: 'GET',
    mode: "cors",
    headers: {
    accept: "application/json",
    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
    })
    .then(response => {
    if (response.ok) {
    response.json().then(success => {
    
    let html = '<div class="row">';
    
    let data = success.passengers;
    
    data.forEach((passenger) => {
    
    html += `<div class="custom-control custom-checkbox col-md-4 mt-2">
        <input type="checkbox" onchange="saveCheck(${passenger.id})" value="${passenger.id}" class="custom-control-input"
           name="passengers[]" id="defaultUnchecked${passenger.id}">
        <label class="custom-control-label" for="defaultUnchecked${passenger.id}">${passenger.nombre}
            ${passenger.apellido}</label>
    </div>`
    })
    
    html += '</div>'

    divPassengers.innerHTML = html;
    });

    }
    });
</script> --}}

@endsection