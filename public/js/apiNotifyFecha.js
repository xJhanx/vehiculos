
//datatables settings mantenimientos
dtRecomendacion = $('#dataTableNotifysFecha').DataTable({
    processing: true,
    serverSide: true,
    responsive: true,
    scrollCollapse: true,
    paging: true,
    stateSave: true,
    autoWidth: false,

    ajax:  "/notifysfecha/",
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
            data: 'vigencia_tarjeta_operaciones',
            name: 'vigencia_tarjeta_operaciones',
            orderable: false,
            searchable: false,
        },
        {
            data: 'vigencia_tecnomecanica',
            name: 'vigencia_tecnomecanica',
            orderable: false,
            searchable: false,
        },
        {
            data: 'vigencia_soat',
            name: 'vigencia_soat',
            orderable: false,
            searchable: false,
        },
        {
            data: 'vigencia_poliza_tr',
            name: 'vigencia_poliza_tr',
            orderable: false,
            searchable: false,
        },
        {
            data: 'vigencia_poliza_ct',
            name: 'vigencia_poliza_ct',
            orderable: false,
            searchable: false,
        },
        {
            data: 'vigencia_poliza_ex_ct',
            name: 'vigencia_poliza_ex_ct',
            orderable: false,
            searchable: false,
        },

        {
            data: 'vigencia_poliza_ex_ct',
            name: 'vigencia_poliza_ex_ct',
            orderable: false,
            searchable: false,
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
