


<table>
    <thead>
        <tr>

            <th style="word-wrap:break-word"><b>tipo servicio</b></th>
            <th style="word-wrap:break-word"><b>estado</b></th>
            <th style="word-wrap:break-word"><b>tipo vehiculo</b></th> 
            <th style="word-wrap:break-word"><b>placa</b></th>
            <th style="word-wrap:break-word"><b>marca</b></th>
            <th style="word-wrap:break-word"><b>modelo</b></th>
            <th style="word-wrap:break-word"><b>cilindraje</b></th>
            <th style="word-wrap:break-word"><b>capacidad pasajeros</b></th>
            <th style="word-wrap:break-word"><b>capacidad litros</b></th>
            <th style="word-wrap:break-word"><b>capacidad toneladas</b></th>
            <th style="word-wrap:break-word"><b>tipo combustible</b></th>
            <th style="word-wrap:break-word"><b>color</b></th>
            <th style="word-wrap:break-word"><b>serie</b></th>
            <th style="word-wrap:break-word"><b>numero licencia</b></th>
            <th style="word-wrap:break-word"><b>fecha licencia</b></th>
            <th style="word-wrap:break-word"><b>numero tarjeta operaciones</b></th>
            <th style="word-wrap:break-word"><b>vigencia tarjeta operaciones</b></th>
            <th style="word-wrap:break-word"><b>numero tecnomecanica</b></th>
            <th style="word-wrap:break-word"><b>vigencia tecnomecanica</b></th>
            <th style="word-wrap:break-word"><b>numero soat</b></th>
            <th style="word-wrap:break-word"><b>vigencia soat</b></th>
            <th style="word-wrap:break-word"><b>aseguradora poliza tr</b></th>
            <th style="word-wrap:break-word"><b>numero poliza tr</b></th>
            <th style="word-wrap:break-word"><b>vigencia poliza tr</b></th>
            <th style="word-wrap:break-word"><b>aseguradora poliza ct</b></th>
            <th style="word-wrap:break-word"><b>numero poliza ct</b></th>
            <th style="word-wrap:break-word"><b>vigencia poliza ct</b></th>
            <th style="word-wrap:break-word"><b>aseguradora poliza ex ct</b></th>
            <th style="word-wrap:break-word"><b>numero poliza ex ct</b></th>
            <th style="word-wrap:break-word"><b>vigencia poliza ex ct</b></th>
            <th style="word-wrap:break-word"><b>fecha ingreso contrato</b></th>
            <th style="word-wrap:break-word"><b>gps</b></th>
            <th style="word-wrap:break-word"><b>kit</b></th>
            <th style="word-wrap:break-word"><b>botiquin</b></th>
            <th style="word-wrap:break-word"><b>recomendacion</b></th>
            <th style="word-wrap:break-word"><b>km actual</b></th>
            <th style="word-wrap:break-word"><b>nº contracto</b></th>
            <th style="word-wrap:break-word"><b>Vigencia targeton</b></th>
            <th style="word-wrap:break-word"><b>Reporte comparendos</b></th>
            <th style="word-wrap:break-word"><b>Reporte incidentes</b></th>
            <th style="word-wrap:break-word"><b>Reporte accidentes</b></th>



        </tr>
    </thead>
    <tbody>
        @foreach ($vehiculos as $vehiculo)
        <tr>

            <th style="word-wrap:break-word"><b>{{$vehiculo->tipo_servicio}}</b></th>
            <th style="word-wrap:break-word"><b>{{$vehiculo->estado}}</b></th>
            <th style="word-wrap:break-word"><b>{{$vehiculo->tipo_vehiculo}}</b></th>
            <th style="word-wrap:break-word"><b>{{$vehiculo->placa}}</b></th>
            <th style="word-wrap:break-word"><b>{{$vehiculo->marca}}</b></th>
            <th style="word-wrap:break-word"><b>{{$vehiculo->modelo}}</b></th>
            <th style="word-wrap:break-word"><b>{{$vehiculo->cilindraje}}</b></th>
            <th style="word-wrap:break-word"><b>{{$vehiculo->capacidad_pasajeros}}</b></th>
            <th style="word-wrap:break-word"><b>{{$vehiculo->capacidad_litros}}</b></th>
            <th style="word-wrap:break-word"><b>{{$vehiculo->capacidad_toneladas}}</b></th>
            <th style="word-wrap:break-word"><b>{{$vehiculo->tipo_combustible}}</b></th>
            <th style="word-wrap:break-word"><b>{{$vehiculo->color}}</b></th>
            <th style="word-wrap:break-word"><b>{{$vehiculo->serie}}</b></th>
            <th style="word-wrap:break-word"><b>{{$vehiculo->numero_licencia}}</b></th>
            <th style="word-wrap:break-word"><b>{{$vehiculo->fecha_licencia}}</b></th>
            <th style="word-wrap:break-word"><b>{{$vehiculo->numero_tarjeta_operaciones}}</b></th>
            <th style="word-wrap:break-word"><b>{{$vehiculo->vigencia_tarjeta_operaciones}}</b></th>
            <th style="word-wrap:break-word"><b>{{$vehiculo->numero_tecnomecanica}}</b></th>
            <th style="word-wrap:break-word"><b>{{$vehiculo->vigencia_tecnomecanica}}</b></th>
            <th style="word-wrap:break-word"><b>{{$vehiculo->numero_soat}}</b></th>
            <th style="word-wrap:break-word"><b>{{$vehiculo->vigencia_soat}}</b></th>
            <th style="word-wrap:break-word"><b>{{$vehiculo->aseguradora_poliza_tr}}</b></th>
            <th style="word-wrap:break-word"><b>{{$vehiculo->numero_poliza_tr}}</b></th>
            <th style="word-wrap:break-word"><b>{{$vehiculo->vigencia_poliza_tr}}</b></th>
            <th style="word-wrap:break-word"><b>{{$vehiculo->aseguradora_poliza_ct}}</b></th>
            <th style="word-wrap:break-word"><b>{{$vehiculo->numero_poliza_ct}}</b></th>
            <th style="word-wrap:break-word"><b>{{$vehiculo->vigencia_poliza_ct}}</b></th>
            <th style="word-wrap:break-word"><b>{{$vehiculo->aseguradora_poliza_ex_ct}}</b></th>
            <th style="word-wrap:break-word"><b>{{$vehiculo->numero_poliza_ex_ct}}</b></th>
            <th style="word-wrap:break-word"><b>{{$vehiculo->vigencia_poliza_ex_ct}}</b></th>
            <th style="word-wrap:break-word"><b>{{$vehiculo->fecha_ingreso_contrato}}</b></th>
            <th style="word-wrap:break-word"><b>{{$vehiculo->gps}}</b></th>
            <th style="word-wrap:break-word"><b>{{$vehiculo->kit}}</b></th>
            <th style="word-wrap:break-word"><b>{{$vehiculo->botiquin}}</b></th>
            <th style="word-wrap:break-word"><b>{{$vehiculo->recomendacion}}</b></th>
            <th style="word-wrap:break-word"><b>{{$vehiculo->km_actual}}</b></th>
            <th style="word-wrap:break-word"><b></b></th>
            <th style="word-wrap:break-word"><b></b></th>
            <th style="word-wrap:break-word"><b></b></th>
            <th style="word-wrap:break-word"><b></b></th>
            <th style="word-wrap:break-word"><b></b></th>

        </tr>
        @endforeach
    </tbody>
</table>