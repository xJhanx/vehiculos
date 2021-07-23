
document.addEventListener('DOMContentLoaded', function () {

    // datatables settings Documentos
    dtHistorialRE = $('#dataTableHistorialRE').DataTable({
        processing: true,
        serverSide: true,
        responsive: true,
        autoWidth: false,
        stateSave: true,
        ajax: "/historialEjecutado/" + document.getElementById('recomendacion_id').value,

        columns: [
            {
                data: 'parte',
                name: 'parte'
            },
            {
                data: 'prioridad',
                name: 'prioridad'
            },

            {
                data: 'frecuencia',
                name: 'frecuencia'
            },
            {
                data: 'fuente',
                name: 'fuente'
            },
            {
                data: 'km_actual',
                name: 'km_actual'
            },
            {
                data: 'estado',
                name: 'estado'
            },
            {
                data: 'fecha_programado',
                name: 'fecha_programado'
            },
            {
                data: 'fecha_ejecutado',
                name: 'fecha_ejecutado'
            },
            {
                data: 'observacion',
                name: 'observacion'
            },
            {
                data: 'action',
                name: 'action',
                orderable: false
            }
        ],
        order: [
            [0, 'desc']
        ]

    });

});

//Eliminar cliente
function eliminarHistorials(ente_id) {
    toastr.options.preventDuplicates = true;
    toastr.warning("<br /><button class='btn btn-sm btn-success m-1' type='button' value='yes'>Yes</button> <button class='btn btn-sm btn-dark m-1' type ='button'  value='no' > No </button>", 'Desea eliminar este elemento ?', {
        allowHtml: true,
        onclick: function (toast) {
            value = toast.target.value
            if (value == 'yes') {
                const url = '/historialEjecutado/alls/' + ente_id
                fetch(url, {
                    method: 'DELETE',
                    mode: "cors",
                    headers: {
                        accept: "application/json",
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                })
                    .then(response => {
                        if (response.ok) {
                            response.text().then(success => {
                                dtHistorialRE.draw();
                                toastr.remove()
                                toastr.info('Success:', success);
                            });
                        }
                    })
                    .catch(error => {
                        console.log('request failed');
                    });
            } else {
                toastr.remove()
            }
        }
    });
}