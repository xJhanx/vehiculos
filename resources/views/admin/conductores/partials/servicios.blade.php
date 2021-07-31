<div class="card mb-0">
    <div class="table-responsive p-3">
        <table class="table align-items-center table-flush table-hover" id="dataTableServicesToDrivers">
            <thead class="thead">
                <tr>
                    {{-- <th>Empresa</th> --}}
                    <th>No de pasajeros</th>
                    <th>Vehiculo</th>
                    <th>Fecha</th>
                    <th>Hora</th>
                    <th>Lugar de inicio</th>
                    <th>Lugar de destino</th>
                    <th>Estado</th>
                </tr>
            <tbody>
                @foreach ($conductor->servicios as $item)
                    <tr>
                        <td>{{ count($item->passengers) }}</td>
                        <td> {{ $item->vehiculo->placa}}</td>
                        <td>{{ $item->date }}</td>
                        <td>{{ $item->hour }}</td>
                        <td>{{ $item->punto_inicio }}</td>
                        <td>{{ $item->punto_fin }}</td>
                        <td><select class="custom-select form-control" id="estadoService" service="{{ $item->id }}">
                                <option {{ $item->estado == 'Solicitado por el cliente' ? 'selected' : '' }}
                                    value="Solicitado por el cliente">Solicitado por el cliente</option>
                                <option {{ $item->estado == 'Solicitud de recogida aceptada' ? 'selected' : '' }}
                                    value="Solicitud de recogida aceptada">Solicitud de recogida aceptada</option>
                                <option {{ $item->estado == 'Recogida en progreso' ? 'selected' : '' }}
                                    value="Recogida en progreso">Recogida en progreso</option>
                                <option
                                    {{ $item->estado == 'Servicio realizado' ? 'selected' : '' }}value="Servicio realizado">
                                    Servicio realizado</option>
                            </select> </td>
                    </tr>
                @endforeach
            </tbody>
            </thead>
        </table>
    </div>
</div>
