<!DOCTYPE html>

<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>


    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <link rel="stylesheet" type="text/css" href="{{ asset('/assets/css/style.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('/css/all.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('/css/dataTables.bootstrap4.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('/css/bootstrap.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('/css/lightbox.min.css') }}">

</head>

<body>
    <table>
        <thead>
            <tr>
                <th width="30" height="30" valign="middle"><b>S. No </b></th>
                <th width="30" height="30" valign="middle"><b>Vehiculo </b></th>
                <th width="30" height="30" valign="middle"><b>Tipo de mantenimiento </b></th>
                <th width="30" height="30" valign="middle"><b>Descripcion </b></th>
                <th width="30" height="30" valign="middle"><b>Fecha R </b></th>
                <th width="30" height="30" valign="middle"><b>Factura </b></th>
                <th width="30" height="30" valign="middle"><b>Gasto </b></th>
                <th width="30" height="30" valign="middle"><b>Proveedor </b></th>
            </tr>
        </thead>
        <tbody>
            @foreach ($vehiculo->revisionesIndividualYear($vehiculo->id , $year) as $key => $mantenimiento)
            <tr>
                <td>{{$key+1}}</td>
                <td style="color: #2E64FE;">{{$vehiculo->placa}} </td>
                <td width="20" valign="middle">{{$mantenimiento->tipo}}</td>
                <td width="30" valign="middle">{{$mantenimiento->descripcion}}</td>
                <td width="10" valign="middle">{{$mantenimiento->fecha_ejecutado}}</td>
                <td width="10" valign="middle">{{$mantenimiento->factura}}</td>
                <td width="20" valign="middle">{{$mantenimiento->aux}}</td>
                <td width="20" valign="middle">{{$mantenimiento->proveedor->fullname}}</td>
            </tr>
            @endforeach
            <tr>
                <td colspan="7" style="color:#FF0040;" align="left">{{$vehiculo->totalYear($vehiculo->id , $year)}}</td>
            </tr>
        </tbody>
    </table>

</body>

</html>