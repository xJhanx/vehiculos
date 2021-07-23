
var formMantenimientoRegister = document.getElementById('formMantenimientoRegister');
formMantenimientoRegister.addEventListener('submit', ajaxformMantenimientoRegister);


//dtMantenimientos settings mantenimientos
dtMantenimiento = $('#dataTableMantenimientos').DataTable({
    processing: true,
    serverSide: true,
    responsive: true,
    autoWidth: false,
    stateSave: true,
    paging: true,

    ajax:  "/mantenimientos/" + token,
    
    columns: [{
        data: 'DT_RowIndex',
        name: 'DT_RowIndex',
        orderable: false,
        searchable: false,
    },
    {
        data: 'fecha_ejecutado',
        name: 'fecha_ejecutado',
    },
    {
        data: 'tipo',
        name: 'tipo',
    },
    {
        data: 'subtotal',
        name: 'subtotal',
    },
    {
        data: 'proveedor.fullname',
        name: 'proveedor.fullname',
    },
    {
        data: 'descripcion',
        name: 'descripcion',
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


//Envio de datos ajax
function ajaxformMantenimientoRegister(event) {
    event.preventDefault();
    document.getElementById("btnSaveMantenimiento").value = "Enviando...";

    const dataRegister = new FormData(formMantenimientoRegister);

    fetch(formMantenimientoRegister.action, {
        method: 'POST',
        body: dataRegister,
        mode: "cors",
        headers: {
            accept: "application/json",
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    })
        .then(response => {
            if (response.ok) {
                response.text().then(success => {
                    toastr.info('Success:', success);
                    init();
                    document.getElementById("btnSaveMantenimiento").value = "Enviar";
                    $('#formMantenimientoRegister').trigger("reset");
                    $('#modalMantenimientoRegister').modal('hide');
                    dtMantenimiento.draw();
                    dtMantenimiento.columns.adjust().draw();

                });
            } else {
                throw response.json().then(error => {
                    for (var clave in error.errors) {
                        let container = $('#' + $.escapeSelector(clave)).closest('div');
                        container.find('input, select, textarea').addClass('is-invalid');
                        container.addClass('is-invalid-container');
                        container.append('<div class="invalid-feedback">' + error.errors[clave] + '</div>');
                    }

                    document.getElementById("btnSaveMantenimiento").value = "Enviar";
                })
            }
        })
        .catch(error => {
            console.log('request failed');
        });
}

//Eliminar cliente
function eliminarMantenimiento(ente_id) {
    toastr.options.preventDuplicates = true;
    toastr.warning("<br /><button class='btn btn-sm btn-success m-1' type='button' value='yes'>Yes</button> <button class='btn btn-sm btn-dark m-1' type ='button'  value='no' > No </button>", 'Desea eliminar este elemento ?', {
        allowHtml: true,
        onclick: function (toast) {
            value = toast.target.value
            if (value == 'yes') {
                const url =  '/mantenimientos/' + ente_id
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
                                dtMantenimiento.draw();
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