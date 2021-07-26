<table>
    <thead>
        <tr>
            <td style="background-color: #deff92;">Placa : {{$vehiculo->placa}} </td>
            <td style="background-color: #deff92;">KM : {{$vehiculo->km_actual}}</td>
            <td style="background-color: #deff92;">Marca : {{$vehiculo->marca}}</td>
            <td style="background-color: #deff92;">Modelo : {{$vehiculo->modelo}}</td>
            <td style="background-color: #deff92;">Color : {{$vehiculo->color}} </td>
            <td style="background-color: #deff92;">Combustible : {{$vehiculo->tipo_combustible}}</td>
            <td style="background-color: #deff92;">Estado: {{$vehiculo->estado}}</td>
        </tr>
        <tr>
            <th style="background-color: #92beff; font-weight:bolder; ">Parte </th>
            <th style="background-color: #92beff; font-weight:bolder; ">Programado Siguiente</th>
            <th style="background-color: #92beff; font-weight:bolder; ">Prioridad</th>
            <th style="background-color: #92beff; font-weight:bolder; ">Frecuencia</th>
            <th style="background-color: #92beff; font-weight:bolder; ">Evaluacion </th>
            <th style="background-color: #92beff; font-weight:bolder; ">Fuente</th>
            <th style="background-color: #92beff; font-weight:bolder; ">Cant Programados</th>
            <th style="background-color: #92beff; font-weight:bolder; ">Cant Ejecutados</th>
            <th style="background-color: #92beff; font-weight:bolder; ">Segumiento</th>
        </tr>
    </thead>

    <tbody>
        @foreach ($vehiculo->recomendaciones as $recomendaciones)
        <tr>
            <td>{{$recomendaciones->parte->nombre}}</td>
            @if ($recomendaciones->km_siguiente)
            <td>{{$recomendaciones->km_siguiente}}</td>
            @else
            @if ($recomendaciones->fecha_siguiente)
            <td>{{date_format($recomendaciones->fecha_siguiente,"j-M-Y") }}</td>
            @else
            <td>No Programado</td>
            @endif
            @endif
            <td>{{$recomendaciones->parte->prioridad}}</td>
            <td>{{$recomendaciones->parte->frecuencia}}</td>
            <td>{{$recomendaciones->parte->evaluacion}}</td>
            <td>{{$recomendaciones->parte->fuente}}</td>
            <td>{{$recomendaciones->cant_programado}}</td>
            <td>{{$recomendaciones->cant_ejecutado}}</td>
            <td>
                <table>
                    <tr>
                        <td></td>
                    </tr>
                    @foreach ($recomendaciones->historialREs as $historias)
                    <tr>
                        <td style="background-color: #f8ff92;">

                            {{
                                       "    Programado  " . '     ' . date_format($historias->fecha_programado,"j-M-Y") 
                            }}

                        </td>
                        @if ($historias->fecha_ejecutado)
                        <td style="background-color: #b9ffb0;">

                            {{
                                        " Ejecutado   "  . date_format($historias->fecha_ejecutado,"j-M-Y" )  
                            }}

                        </td>
                        @else
                        <td style="background-color: #ffb5b0;">
                            {{
                                    "No Ejecutado   "    
                            }}

                        </td>
                        @endif



                    </tr>
                    @endforeach
                </table>
            </td>


        </tr>
        @endforeach

    </tbody>
</table>