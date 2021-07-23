
document.addEventListener('DOMContentLoaded', function () {

    // datatables settings vehiculos
    dtVehiculoListas = $('#dataTableVehiculosListas').DataTable({
        processing: true,
        serverSide: true,
        responsive: true,
        autoWidth: false,
        stateSave: true,
        ajax:  "/kits/",

        columns: [{
                data: 'DT_RowIndex',
                name: 'DT_RowIndex',
                orderable: false,
                searchable: false
            },
            {
                data: 'propietario.fullname',
                name: 'propietario.fullname'
            },
            {
                data: 'placa',
                name: 'placa'
            },
            {
                data: 'tipo_vehiculo',
                name: 'tipo_vehiculo'
            },
            {
                data: 'km_actual',
                name: 'km_actual'
            },
            {
                data: 'marca',
                name: 'marca'
            },
            {
                data: 'modelo',
                name: 'modelo'
            },
            {
                data: 'color',
                name: 'color'
            },
            {
                data: 'estado',
                name: 'estado'
            },
            {
                data: 'action',
                name: 'action',
                orderable: false
            },
        ],
        order: [
            [0, 'desc']
        ]

    });

});

