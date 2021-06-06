<table>
    <thead>
        <tr>
            <th  valign="justify"><b>Vehiculo </b></th>
            <th  valign="justify"><b>Fecha R </b></th>
            <th  valign="justify"><b>Tipo de mantenimiento </b></th>
            <th  valign="justify"><b>Proveedor </b></th>
            <th  valign="justify"><b>Nit </b></th>
            <th  valign="justify"><b>Factura </b></th>
            <th  valign="justify"><b>Descripcion </b></th>
            <th  valign="justify"><b>Gasto </b></th>
        </tr>
    </thead>
    <tbody>
        @foreach ($vehiculos as $vehiculo)
        @foreach ($vehiculo->mantenimientos as $key => $mantenimiento)
        <tr>
            <td style="color: #2E64FE;"  valign="justify">{{$vehiculo->placa}} </td>
            <td  valign="justify">{{$mantenimiento->fecha_ejecutado}}</td>
            <td  valign="justify">{{$mantenimiento->tipo}}</td>
            <td  valign="justify">{{$mantenimiento->proveedor->fullname}}</td>
            <td  valign="justify">{{$mantenimiento->proveedor->identificacion}}</td>
            <td  valign="justify">{{$mantenimiento->factura}}</td>
            <td  valign="justify">{{$mantenimiento->descripcion}}</td>
            <td  valign="justify">{{$mantenimiento->aux}}</td>
        </tr>
        @endforeach
        <tr>

            <td colspan="8" style="color:#FF0040;">{{$vehiculo->totalYear($vehiculo->id , $year)}}</td>

        </tr>
        @endforeach
    </tbody>
</table>