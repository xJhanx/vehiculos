<table>
    <thead>
        <tr>
            <th style="word-wrap:break-word"><b>Nombre </b></th>
            <th style="word-wrap:break-word"><b>Referencia</b></th>
            <th style="word-wrap:break-word"><b>Cantidad</b></th>
            <th style="word-wrap:break-word"><b>Num Factura</b></th>
            <th style="word-wrap:break-word"><b>Valor</b></th>
        </tr>
    </thead>
    <tbody>
        @foreach ($piezas as $pieza)
        <tr>
            <td style="word-wrap:break-word">{{$pieza->nombre}}</td>
            <td style="word-wrap:break-word">{{$pieza->referencia}}</td>
            <td style="word-wrap:break-word">{{$pieza->cantidad}}</td>
            <td style="word-wrap:break-word">{{$pieza->num_factura}}</td>
            <td style="word-wrap:break-word">{{$pieza->moneda}}</td>
        </tr>
        @endforeach
    </tbody>
</table>

{{-- *¬_¬* --}}