@extends('layouts.app')
@section('content')

<div class="" tabindex="-1" role="dialog" data-backdrop="static" data-ajax-modal id="modalServicioRegister">
    <div class="modal-dialog modal-lg " role="document">
        <div class="modal-content ">

            <div class="card-body row">

                <div class="container">
                    <h5 class="my-2" style="font-weight:bold">Registro Solicitud de servicio </h5>

                    @if(Session::has('exito'))
                    <p class="alert {{ Session::get('alert-class', 'alert-info') }} font-weight-bold">{{ Session::get('exito') }}</p>
                    @endif


                    <div class="progress">
                        <div class="progress-bar progress-bar-striped active bg-info" role="progressbar"
                            aria-valuemin="0" aria-valuemax="1000"></div>
                    </div>

                    <form id="formConductorRegister" class="regiration_form" method="POST"
                        action="{{route('servicios.store')}}">
                        @csrf

                        <fieldset>
                            <!-- <h2>Paso 1: Crear su cuenta</h2> -->
                            <div class="form-group">
                                <label for="date">Dia del servicio</label>
                                <input type="date" class="form-control" id="date" name="data[date]"
                                    placeholder="Fecha del servicio">
                            </div>
                            <div class="form-group">
                                <label for="hour">Hora</label>
                                <input type="time" class="form-control" id="hour" name="data[hour]"
                                    placeholder="Hora del servicio">
                            </div>

                            <div class="form-group">
                                <label for="point_start">Punto de inicio</label>
                                <input type="text" class="form-control" id="point_start" name="data[punto_inicio]"
                                    placeholder="Punto de inicio ">
                            </div>

                            <div class="form-group">
                                <label for="point_end">Punto de llegada</label>
                                <input type="text" class="form-control" id="point_end" name="data[punto_fin]"
                                    placeholder="Punto de llegada">
                            </div>
                            <input type="button" class="next btn btn-info" value="Siguiente" />
                        </fieldset>

                        <fieldset width="500px">
                            <!-- <h2> Paso 2: Agregar detalles personales</h2> -->
                            <div class="form-group mt-3">
                                <label class="text-dark">Pasajeros</label>

                                <a href="javascript:void(0)" class="tooltip-wrapper" data-toggle="modal"
                                    data-placement="top" data-target="#modalPassengerRegister" title="Registrar">
                                    <i class="fa fa-edit btn btn-icon text-success"></i>
                                </a>

                                <div class="w-100"></div>
                                <div id="checkPassengers"></div>
                            </div>

                            <input type="button" name="previous" class="previous btn btn-default" value="Previo" />
                            <input type="button" name="next" class="next btn btn-info" value="Siguiente" />
                        </fieldset>
                        <fieldset>
                            <!-- <h2>Paso 3: Información de contacto</h2> -->
                            <div class="form-group">
                                <label for="observaciones">Observaciones</label>
                                <textarea type="text" class="form-control" id="observaciones" name="data[observaciones]"
                                    placeholder="Observaciones"></textarea>
                            </div>

                            <input type="button" name="previous" class="previous btn btn-default" value="Previo" />
                            <input type="submit" name="submit" class="submit btn btn-success" value="Enviar"
                                id="submit_data" />
                        </fieldset>

                    </form>

                </div>
            </div>

        </div>
    </div>
</div>

@include('admin.passengers.partials.formUpdate')
@include('admin.passengers.partials.formRegister')

@stop

@section('scripts')
<script>
    var current = 1,
        current_step, next_step, steps;
    steps = $("fieldset").length;
    $(".next").click(function() {
        current_step = $(this).parent();
        next_step = $(this).parent().next();
        next_step.show();
        current_step.hide();
        setProgressBar(++current);
    });
    $(".previous").click(function() {
        current_step = $(this).parent();
        next_step = $(this).parent().prev();
        next_step.show();
        current_step.hide();
        setProgressBar(--current);
    });
    setProgressBar(current);
    // Change progress bar action
    function setProgressBar(curStep) {
        var percent = parseFloat(100 / steps) * curStep;
        percent = percent.toFixed();
        $(".progress-bar")
            .css("width", percent + "%")
            .html(percent + "%");
    }
</script>

<script>
    let passengersSelected = [];
</script>

<script>
    function saveCheck(id){

            console.log(id);
            
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
<script src="{{ asset('/js/apiServicio.js') }}"></script>
<script defer src="{{ asset('/js/serviciosListener.js') }}"></script>

<script src="{{ asset('/js/apiPassengerRegister.js') }}"></script>
<script defer src="{{ asset('/js/passengerRegisterListener.js') }}"></script>

<script defer src="{{ asset('/js/chargePassengers.js') }}"></script>
@endsection