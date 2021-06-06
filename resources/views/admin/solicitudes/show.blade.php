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

        <li class="item-custom text-center active-custom">Servicio</li>
       
        <li class="item-custom text-center">Cliente</li>
        <li class="item-custom text-center">Historial</li>
        <li class="item-custom text-center">Evidencias</li>
        


    </ul>

    <div class="panels">

        <div class=" panels-item  active-panels">
            @include('admin.servicios.partials.formService')
        </div>

 
    </div>

</div>



@stop
@push('scripts')

<script src="{{ asset('/apis/custompanels.js') }}"></script>


@endpush