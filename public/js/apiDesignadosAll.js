document.addEventListener('DOMContentLoaded', function () {

    // datatables settings
    dtDesignados = $('#dataTableDesignados').DataTable({

        processing: true,
        serverSide: true,
        responsive: true,
        autoWidth: false,
        stateSave: true,

        ajax: "/designadosAll",

        columns: [{
            data: 'DT_RowIndex',
            name: 'DT_RowIndex',
            orderable: false,
            searchable: false
        },
        {
            data: 'nombreDesignado',
            name: 'nombreDesignado'
        },
        {
            data: 'nombreCompany',
            name: 'nombreCompany'
        },
        {
            data: 'email',
            name: 'email'
        },
        {
            data: 'direccion',
            name: 'direccion'
        },
        {
            data: 'barrio',
            name: 'barrio'
        },
        {
            data: 'ciudad',
            name: 'ciudad'
        },
        {
            data: 'telefono',
            name: 'telefono'
        }
        ],
        order: [
            [0, 'asc']
        ]

    });

});