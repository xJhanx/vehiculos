
    <table>
        <thead>
            <tr>
                <th width="30" height="30" valign="middle"><b>S. No </b></th>
                <th width="30" height="30" valign="middle"><b>Vehiculo </b></th>
                <th width="30" height="30" valign="middle"><b>Tipo de mantenimiento </b></th>
                <th width="30" height="30" valign="middle"><b>Descripcion </b></th>
                <th width="30" height="30" valign="middle"><b>Fecha R </b></th>
                <th width="30" height="30" valign="middle"><b>Gasto </b></th>
                <th width="30" height="30" valign="middle"><b>Proveedor </b></th>
            </tr>
        </thead>
        <tbody>
            @foreach ($vehiculo->revisionesIndividualMes($vehiculo->id , $mes, $anio) as $key => $mantenimiento)
            <tr>
                <td>{{$key+1}}</td>
                <td style="color: #2E64FE;">{{$vehiculo->placa}} </td>
                <td width="20"valign="middle">{{$mantenimiento->tipo}}</td>
                <td width="30"valign="middle">{{$mantenimiento->descripcion}}</td>
                <td width="10"valign="middle">{{$mantenimiento->fecha_ejecutado}}</td>
                <td width="20"valign="middle">{{$mantenimiento->aux}}</td>
                <td width="20"valign="middle">{{$mantenimiento->proveedor->fullname}}</td>
            </tr>
            @endforeach
            <tr>
                <td colspan="7" style="color:#FF0040;" align="left">{{$vehiculo->totalMes($vehiculo->id , $mes)}}</td>
            </tr>
        </tbody>
    </table>
