
//datatables settings mantenimientos
dtRecomendacion = $('#dataTableNotifysKm').DataTable({
    processing: true,
    serverSide: true,
    responsive: true,
    scrollCollapse: true,
    paging: true,
    stateSave: true,
    autoWidth: false,

    ajax: "/notifysdias/",
    columns: [{
        data: 'DT_RowIndex',
        name: 'DT_RowIndex',
        orderable: false,
        searchable: false,
    },
    {
        data: 'placa',
        name: 'placa',
        orderable: false,
        searchable: false,
    },
    {
        data: 'alerta',
        name: 'alerta',
        orderable: false,
        searchable: false,
    },

    {
        data: 'km_actual',
        name: 'km_actual',
        orderable: false
    },
    {
        data: 'frecuencia',
        name: 'frecuencia',
        orderable: false
    },

    {
        data: 'fecha_siguiente',
        name: 'fecha_siguiente',
        orderable: false
    },

    {
        data: 'action',
        name: 'action',
        orderable: false
    },



    ],
    order: [
        [0, 'asc']
    ]

});
