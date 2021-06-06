<!DOCTYPE html>
<html>

<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <style type="text/css">
        /* CLIENT-SPECIFIC STYLES */
        body,
        table,
        td,
        a {
            -webkit-text-size-adjust: 100%;
            -ms-text-size-adjust: 100%;
        }

        table,
        td {
            mso-table-lspace: 0pt;
            mso-table-rspace: 0pt;
        }

        img {
            -ms-interpolation-mode: bicubic;
        }

        /* RESET STYLES */
        img {
            border: 0;
            height: auto;
            line-height: 100%;
            outline: none;
            text-decoration: none;
        }

        table {
            border-collapse: collapse !important;
        }

        body {
            height: 100% !important;
            margin: 0 !important;
            padding: 0 !important;
            width: 100% !important;
        }

        /* iOS BLUE LINKS */
        a[x-apple-data-detectors] {
            color: inherit !important;
            text-decoration: none !important;
            font-size: inherit !important;
            font-family: inherit !important;
            font-weight: inherit !important;
            line-height: inherit !important;
        }

        /* MEDIA QUERIES */
        @media screen and (max-width: 480px) {
            .mobile-hide {
                display: none !important;
            }

            .mobile-center {
                text-align: center !important;
            }
        }

        /* ANDROID CENTER FIX */
        div[style*="margin: 16px 0;"] {
            margin: 0 !important;
        }
    </style>

<body style="margin: 0 !important; padding: 0 !important; background-color: #eeeeee;" bgcolor="#eeeeee">


    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td align="center" style="background-color: #eeeeee;" bgcolor="#eeeeee">

                <table align="center" border="0" cellpadding="0" cellspacing="0" width="100%" style="max-width:600px;">
                    <tr>
                        <td align="center" valign="top" style="font-size:0; padding: 35px;" bgcolor="#044767">

                            <div
                                style="display:inline-block; max-width:50%; min-width:100px; vertical-align:top; width:100%;">
                                <table align="left" border="0" cellpadding="0" cellspacing="0" width="100%"
                                    style="max-width:300px;">
                                    <tr>
                                        <td align="left" valign="top"
                                            style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 36px; font-weight: 800; line-height: 48px;"
                                            class="mobile-center">
                                            <h1 style="font-size: 36px; font-weight: 800; margin: 0; color: #ffffff;">
                                                O.S</h1>
                                        </td>
                                    </tr>
                                </table>
                            </div>

                            <div style="display:inline-block; max-width:50%; min-width:100px; vertical-align:top; width:100%;"
                                class="mobile-hide">
                                <table align="left" border="0" cellpadding="0" cellspacing="0" width="100%"
                                    style="max-width:300px;">
                                    <tr>
                                        <td align="right" valign="top"
                                            style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 48px; font-weight: 400; line-height: 48px;">
                                            <table cellspacing="0" cellpadding="0" border="0" align="right">
                                                <tr>
                                                    <td
                                                        style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 18px; font-weight: 400;">
                                                    </td>
                                                    <td
                                                        style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 18px; font-weight: 400; line-height: 24px;">
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </div>

                        </td>
                    </tr>


                    @if ($getByDocument['byTarjeta']->count() != 0)
                    <table align="center" border="0" cellpadding="0" cellspacing="0" width="100%"
                        style="max-width:600px;">
                        <tr>
                            <td align="center"
                                style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 400; line-height: 24px; padding-top: 25px;">
                                <h4
                                    style="font-size: 30px; font-weight: 800; line-height: 36px; color: #333333; margin: 0;">
                                    Informe diario
                                </h4>
                            </td>
                        </tr>
                        <tr>
                            <td align="left"
                                style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 400; line-height: 24px; padding-top: 10px;">
                                <p style="font-size: 16px; font-weight: 400; line-height: 24px; color: #777777;">
                                    Relacion de vehiculos con Targeta proxima a vencer
                                </p>
                            </td>
                        </tr>
                    </table>

                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card card-statistics">
                                <div class="card-body">
                                    <table class="table table-bordered " style="color:black" cellspacing="0">
                                        <thead class="thead">
                                            <th>Placa</th>
                                            <th>Marca</th>
                                            <th>Modelo</th>
                                            <th>Estado</th>
                                            <th>Fecha</th>
                                        </thead>

                                        @foreach ( $getByDocument['byTarjeta'] as $key => $item)

                                        <tr>

                                            <td
                                                style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 800; line-height: 24px; padding: 10px;">
                                                {{$item->placa}}
                                            </td>

                                            <td
                                                style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 800; line-height: 24px; padding: 10px;">
                                                {{$item->marca}}
                                            </td>

                                            <td
                                                style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 800; line-height: 24px; padding: 10px;">
                                                {{$item->modelo}}
                                            </td>

                                            <td
                                                style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 800; line-height: 24px; padding: 10px;">
                                                {{$item->estado}}
                                            </td>

                                            <td
                                                style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 800; line-height: 24px; padding: 10px;">
                                                {{$item->vigencia_tarjeta_operaciones}}
                                            </td>

                                        </tr>
                                        @endforeach
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    @endif

                    @if ($getByDocument['byTecnomecanica']->count() != 0)
                    <table align="center" border="0" cellpadding="0" cellspacing="0" width="100%"
                        style="max-width:600px;">
                        <tr>
                            <td align="center"
                                style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 400; line-height: 24px; padding-top: 25px;">
                                <h4
                                    style="font-size: 30px; font-weight: 800; line-height: 36px; color: #333333; margin: 0;">
                                    Informe diario
                                </h4>
                            </td>
                        </tr>
                        <tr>
                            <td align="left"
                                style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 400; line-height: 24px; padding-top: 10px;">
                                <p style="font-size: 16px; font-weight: 400; line-height: 24px; color: #777777;">
                                    Relacion de vehiculos con Tecnomecanica proxima a vencer
                                </p>
                            </td>
                        </tr>
                    </table>

                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card card-statistics">
                                <div class="card-body">
                                    <table class="table table-bordered " style="color:black" cellspacing="0">
                                        <thead class="thead">
                                            <th>Placa</th>
                                            <th>Marca</th>
                                            <th>Modelo</th>
                                            <th>Estado</th>
                                            <th>Fecha</th>
                                        </thead>

                                        @foreach ($getByDocument['byTecnomecanica'] as $key => $item)

                                        <tr>

                                            <td
                                                style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 800; line-height: 24px; padding: 10px;">
                                                {{$item->placa}}
                                            </td>

                                            <td
                                                style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 800; line-height: 24px; padding: 10px;">
                                                {{$item->marca}}
                                            </td>

                                            <td
                                                style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 800; line-height: 24px; padding: 10px;">
                                                {{$item->modelo}}
                                            </td>

                                            <td
                                                style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 800; line-height: 24px; padding: 10px;">
                                                {{$item->estado}}
                                            </td>

                                            <td
                                                style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 800; line-height: 24px; padding: 10px;">
                                                {{$item->vigencia_tecnomecanica}}
                                            </td>

                                        </tr>
                                        @endforeach
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    @endif

                    @if ($getByDocument['byPolizaTtr']->count() != 0))
                    <table align="center" border="0" cellpadding="0" cellspacing="0" width="100%"
                        style="max-width:600px;">
                        <tr>
                            <td align="center"
                                style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 400; line-height: 24px; padding-top: 25px;">
                                <h4
                                    style="font-size: 30px; font-weight: 800; line-height: 36px; color: #333333; margin: 0;">
                                    Informe diario
                                </h4>
                            </td>
                        </tr>
                        <tr>
                            <td align="left"
                                style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 400; line-height: 24px; padding-top: 10px;">
                                <p style="font-size: 16px; font-weight: 400; line-height: 24px; color: #777777;">
                                    Relacion de vehiculos con Poliza TR proxima a vencer
                                </p>
                            </td>
                        </tr>
                    </table>

                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card card-statistics">
                                <div class="card-body">
                                    <table class="table table-bordered " style="color:black" cellspacing="0">
                                        <thead class="thead">
                                            <th>Placa</th>
                                            <th>Marca</th>
                                            <th>Modelo</th>
                                            <th>Estado</th>
                                            <th>Fecha</th>
                                        </thead>

                                        @foreach ( $getByDocument['byPolizaTtr'] as $key => $item)

                                        <tr>

                                            <td
                                                style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 800; line-height: 24px; padding: 10px;">
                                                {{$item->placa}}
                                            </td>

                                            <td
                                                style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 800; line-height: 24px; padding: 10px;">
                                                {{$item->marca}}
                                            </td>

                                            <td
                                                style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 800; line-height: 24px; padding: 10px;">
                                                {{$item->modelo}}
                                            </td>

                                            <td
                                                style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 800; line-height: 24px; padding: 10px;">
                                                {{$item->estado}}
                                            </td>
                                            <td
                                                style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 800; line-height: 24px; padding: 10px;">
                                                {{$item->vigencia_poliza_tr}}
                                            </td>

                                        </tr>
                                        @endforeach
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    @endif

                    @if ($getByDocument['byPolizaTtc']->count() != 0)
                    <table align="center" border="0" cellpadding="0" cellspacing="0" width="100%"
                        style="max-width:600px;">
                        <tr>
                            <td align="center"
                                style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 400; line-height: 24px; padding-top: 25px;">
                                <h4
                                    style="font-size: 30px; font-weight: 800; line-height: 36px; color: #333333; margin: 0;">
                                    Informe diario
                                </h4>
                            </td>
                        </tr>
                        <tr>
                            <td align="left"
                                style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 400; line-height: 24px; padding-top: 10px;">
                                <p style="font-size: 16px; font-weight: 400; line-height: 24px; color: #777777;">
                                    Relacion de vehiculos con Poliza TC proxima a vencer
                                </p>
                            </td>
                        </tr>
                    </table>

                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card card-statistics">
                                <div class="card-body">
                                    <table class="table table-bordered " style="color:black" cellspacing="0">
                                        <thead class="thead">
                                            <th>Placa</th>
                                            <th>Marca</th>
                                            <th>Modelo</th>
                                            <th>Estado</th>
                                            <th>Fecha</th>
                                        </thead>

                                        @foreach ( $getByDocument['byPolizaTtc'] as $key => $item)

                                        <tr>

                                            <td
                                                style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 800; line-height: 24px; padding: 10px;">
                                                {{$item->placa}}
                                            </td>

                                            <td
                                                style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 800; line-height: 24px; padding: 10px;">
                                                {{$item->marca}}
                                            </td>

                                            <td
                                                style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 800; line-height: 24px; padding: 10px;">
                                                {{$item->modelo}}
                                            </td>

                                            <td
                                                style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 800; line-height: 24px; padding: 10px;">
                                                {{$item->estado}}
                                            </td>
                                            <td
                                                style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 800; line-height: 24px; padding: 10px;">
                                                {{$item->vigencia_poliza_ct}}
                                            </td>

                                        </tr>
                                        @endforeach
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    @endif

                    @if ($getByDocument['bySoat']->count() != 0)
                    <table align="center" border="0" cellpadding="0" cellspacing="0" width="100%"
                        style="max-width:600px;">
                        <tr>
                            <td align="center"
                                style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 400; line-height: 24px; padding-top: 25px;">
                                <h4
                                    style="font-size: 30px; font-weight: 800; line-height: 36px; color: #333333; margin: 0;">
                                    Informe diario
                                </h4>
                            </td>
                        </tr>
                        <tr>
                            <td align="left"
                                style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 400; line-height: 24px; padding-top: 10px;">
                                <p style="font-size: 16px; font-weight: 400; line-height: 24px; color: #777777;">
                                    Relacion de vehiculos con Soat proxima a vencer
                                </p>
                            </td>
                        </tr>
                    </table>

                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card card-statistics">
                                <div class="card-body">
                                    <table class="table table-bordered " style="color:black" cellspacing="0">
                                        <thead class="thead">
                                            <th>Placa</th>
                                            <th>Marca</th>
                                            <th>Modelo</th>
                                            <th>Estado</th>
                                            <th>Fecha</th>
                                        </thead>

                                        @foreach ( $getByDocument['bySoat'] as $key => $item)

                                        <tr>

                                            <td
                                                style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 800; line-height: 24px; padding: 10px;">
                                                {{$item->placa}}
                                            </td>

                                            <td
                                                style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 800; line-height: 24px; padding: 10px;">
                                                {{$item->marca}}
                                            </td>

                                            <td
                                                style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 800; line-height: 24px; padding: 10px;">
                                                {{$item->modelo}}
                                            </td>

                                            <td
                                                style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 800; line-height: 24px; padding: 10px;">
                                                {{$item->vigencia_soat}}
                                            </td>

                                        </tr>
                                        @endforeach
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    @endif

                    @if ($getByDocument['byPolizaEx']->count() != 0)
                    <table align="center" border="0" cellpadding="0" cellspacing="0" width="100%"
                        style="max-width:600px;">
                        <tr>
                            <td align="center"
                                style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 400; line-height: 24px; padding-top: 25px;">
                                <h4
                                    style="font-size: 30px; font-weight: 800; line-height: 36px; color: #333333; margin: 0;">
                                    Informe diario
                                </h4>
                            </td>
                        </tr>
                        <tr>
                            <td align="left"
                                style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 400; line-height: 24px; padding-top: 10px;">
                                <p style="font-size: 16px; font-weight: 400; line-height: 24px; color: #777777;">
                                    Relacion de vehiculos con Poliza EX proxima a vencer
                                </p>
                            </td>
                        </tr>
                    </table>

                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card card-statistics">
                                <div class="card-body">
                                    <table class="table table-bordered " style="color:black" cellspacing="0">
                                        <thead class="thead">
                                            <th>Placa</th>
                                            <th>Marca</th>
                                            <th>Modelo</th>
                                            <th>Estado</th>
                                            <th>Fecha</th>
                                        </thead>

                                        @foreach ( $getByDocument['byPolizaEx'] as $key => $item)

                                        <tr>

                                            <td
                                                style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 800; line-height: 24px; padding: 10px;">
                                                {{$item->placa}}
                                            </td>

                                            <td
                                                style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 800; line-height: 24px; padding: 10px;">
                                                {{$item->marca}}
                                            </td>

                                            <td
                                                style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 800; line-height: 24px; padding: 10px;">
                                                {{$item->modelo}}
                                            </td>

                                            <td
                                                style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 800; line-height: 24px; padding: 10px;">
                                                {{$item->estado}}
                                            </td>

                                            <td
                                                style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 800; line-height: 24px; padding: 10px;">
                                                {{$item->vigencia_poliza_ex_ct}}
                                            </td>

                                        </tr>
                                        @endforeach
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    @endif

                    @if (collect($getByKm)->count() != 0)

                    <table align="center" border="0" cellpadding="0" cellspacing="0" width="100%"
                        style="max-width:600px;">
                        <tr>
                            <td align="center"
                                style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 400; line-height: 24px; padding-top: 25px;">
                                <h4
                                    style="font-size: 30px; font-weight: 800; line-height: 36px; color: #333333; margin: 0;">
                                    Informe diario
                                </h4>
                            </td>
                        </tr>
                        <tr>
                            <td align="left"
                                style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 400; line-height: 24px; padding-top: 10px;">
                                <p style="font-size: 16px; font-weight: 400; line-height: 24px; color: #777777;">
                                    Relacion de vehiculos con vencmientos por kilometraje
                                </p>
                            </td>
                        </tr>
                    </table>

                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card card-statistics">
                                <div class="card-body">
                                    <table class="table table-bordered " style="color:black" cellspacing="0">
                                        <thead class="thead">
                                            <th>Placa</th>
                                            <th>Marca</th>
                                            <th>Modelo</th>
                                            <th>Estado</th>
                                        </thead>



                                        @foreach ($getByKm as $key => $item)

                                        <tr>

                                            <td
                                                style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 800; line-height: 24px; padding: 10px;">
                                                {{$item->placa}}
                                            </td>

                                            <td
                                                style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 800; line-height: 24px; padding: 10px;">
                                                {{$item->marca}}
                                            </td>

                                            <td
                                                style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 800; line-height: 24px; padding: 10px;">
                                                {{$item->modelo}}
                                            </td>

                                            <td
                                                style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 800; line-height: 24px; padding: 10px;">
                                                {{$item->estado}}
                                            </td>

                                        </tr>
                                        @endforeach
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>

                    @endif

                    @if (collect($getByDias)->count() != 0)

                    <table align="center" border="0" cellpadding="0" cellspacing="0" width="100%"
                        style="max-width:600px;">
                        <tr>
                            <td align="center"
                                style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 400; line-height: 24px; padding-top: 25px;">
                                <h4
                                    style="font-size: 30px; font-weight: 800; line-height: 36px; color: #333333; margin: 0;">
                                    Informe diario
                                </h4>
                            </td>
                        </tr>
                        <tr>
                            <td align="left"
                                style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 400; line-height: 24px; padding-top: 10px;">
                                <p style="font-size: 16px; font-weight: 400; line-height: 24px; color: #777777;">
                                    Relacion de vehiculos con documentos proximos a vencer
                                </p>
                            </td>
                        </tr>
                    </table>

                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card card-statistics">
                                <div class="card-body">
                                    <table class="table table-bordered " style="color:black" cellspacing="0">
                                        <thead class="thead">
                                            <th>Placa</th>
                                            <th>Marca</th>
                                            <th>Modelo</th>
                                            <th>Estado</th>
                                        </thead>


                                        @foreach ($getByDias as $key => $item)

                                        <tr>

                                            <td
                                                style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 800; line-height: 24px; padding: 10px;">
                                                {{$item->placa}}
                                            </td>

                                            <td
                                                style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 800; line-height: 24px; padding: 10px;">
                                                {{$item->marca}}
                                            </td>

                                            <td
                                                style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 800; line-height: 24px; padding: 10px;">
                                                {{$item->modelo}}
                                            </td>

                                            <td
                                                style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 800; line-height: 24px; padding: 10px;">
                                                {{$item->estado}}
                                            </td>

                                        </tr>
                                        @endforeach
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>

                    @endif


                    <table align="center" border="0" cellpadding="0" cellspacing="0" width="100%"
                        style="max-width:600px;">
                        <tr>
                            <td
                                style="font-family: Open Sans, Helvetica, Arial, sans-serif; font-size: 14px; font-weight: 400; line-height: 24px;">
                                <p style="font-size: 14px; font-weight: 400; line-height: 20px; color: #777777;">
                                    Software de gestion administrativa
                                    <a href="http://litmus.com" target="_blank" style="color: #777777;">O.S</a>.
                                </p>
                            </td>
                        </tr>
                    </table>

                </table>
            </td>
        </tr>
    </table>
</body>

</html>