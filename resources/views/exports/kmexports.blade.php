<table>
    <thead>
        <tr>
            <th style="word-wrap:break-word"><b>Vehiculo</b></th>
        </tr>
    </thead>
    <tbody>

        <tr>
            <td style="word-wrap:break-word">{{$vehiculo->placa}}</td>
        </tr>

    </tbody>
</table>

<table>
    <thead>
        <tr>
            <th style="word-wrap:break-word"><b>Km Registrado </b></th>
            <th style="word-wrap:break-word"><b>Fecha ingresado </b></th>
            <th style="word-wrap:break-word"><b>Observacion del ingreso</b></th>
        </tr>
    </thead>
    <tbody>
        @foreach ($historial as $historia)
        <tr>
            <td style="word-wrap:break-word">{{$historia->km_registrado}}</td>
            <td style="word-wrap:break-word">{{$historia->f_ingreso}}</td>
            <td style="word-wrap:break-word">{{$historia->observacion}}</td>
        </tr>
        @endforeach
    </tbody>
</table>