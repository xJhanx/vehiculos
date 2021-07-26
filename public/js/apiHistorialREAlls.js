
document.addEventListener('DOMContentLoaded', function () {

    // datatables settings Documentos
    dtDocumento = $('#dataTableHistorialREAlls').DataTable({
        processing: true,
        serverSide: true,
        responsive: true,
        autoWidth: false,
        stateSave: true,

        ajax:  "/Ejecutado/alls/",

        columns: [{
                data: 'DT_RowIndex',
                name: 'DT_RowIndex',
                orderable: false,
                searchable: false
            },

            {
                data: 'vehiculo.placa',
                name: 'vehiculo.placa'
            },

            {
                data: 'fecha_ejecutado',
                name: 'fecha_ejecutado'
            },
            {
                data: 'subtotal',
                name: 'subtotal'
            },

            {
                data: 'descripcion',
                name: 'descripcion'
            },

            {
                data: 'proveedor.nombre',
                name: 'proveedor.nombre'
            },

            {
                data: 'km_actual',
                name: 'km_actual'
            }
        ],
        order: [
            [0, 'desc']
        ]

    });

});
