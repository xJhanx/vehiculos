document.addEventListener('DOMContentLoaded', function () {

    // datatables settings
    dtLocacion = $('#dataTableLocacions').DataTable({
        processing: true,
        serverSide: true,
        responsive: true,
        autoWidth: false,
        
        stateSave: true,
        ajax:  "/locacions/",

        columns: [{
                data: 'DT_RowIndex',
                name: 'DT_RowIndex',
                orderable: false,
                searchable: false
            },
            {
                data: 'nombre',
                name: 'nombre'
            },
            {
                data: 'descripcion',
                name: 'descripcion'
            },
            {
                data: 'porcentaje',
                name: 'porcentaje'
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

});


//Envio de datos ajax
function ajaxFormRegisterLocacion(event) {
    event.preventDefault();
    document.getElementById("btnSaveLocacion").value = "Enviando...";

    const dataRegister = new FormData(formLocacionRegister);

    fetch(formLocacionRegister.action, {
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
                    dtLocacion.draw();
                    document.getElementById("btnSaveLocacion").value = "Enviar";
                    $('#formLocacionRegister').trigger("reset");
                    $('#modalLocacionRegister').modal('hide');
                });
            } else {
                throw response.json().then(error => {
                    for (var clave in error.errors) {
                        let container = $('#' + $.escapeSelector(clave)).closest('div');
                        container.find('input, select, textarea').addClass('is-invalid');
                        container.addClass('is-invalid-container');
                        container.append('<div class="invalid-feedback">' + error.errors[clave] + '</div>');
                    }

                    document.getElementById("btnSaveLocacion").value = "Enviar";
                })
            }
        })
        .catch(error => {
            console.log('request failed');
        });
}

//Eliminar cliente
function eliminarLocacion(ente_id) {
    toastr.options.preventDuplicates = true;
    toastr.warning("<br /><button class='btn btn-sm btn-danger m-1' type='button' value='yes'>Yes</button> <button class='btn btn-sm btn-dark m-1' type ='button'  value='no' > No </button>", 'Desea eliminar este elemento ?', {
        allowHtml: true,
        onclick: function (toast) {
            value = toast.target.value
            if (value == 'yes') {
                const url =  '/locacions/' + ente_id
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
                                dtLocacion.draw();
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

// Traer datos de cliente
function editarLocacion(ente_id) {
    const url =  '/locacions/' + ente_id + '/edit'
    console.log(url);
    const formLocacionUpdate = document.getElementById('formLocacionUpdate');
    fetch(url, {
            method: 'GET',
            mode: "cors",
            headers: {
                accept: "application/json",
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        })
        .then(response => {
            if (response.ok) {
                response.json().then(success => {
                    formLocacionUpdate.id.value = success.id;
                    formLocacionUpdate.nombre.value = success.nombre;
                    formLocacionUpdate.descripcion.value = success.descripcion;
                    formLocacionUpdate.porcentaje.value = success.porcentaje;
                    $('#modalLocacionUpdate').modal('show')
                });
            }
        })
        .catch(error => {
            console.log('request failed');
        });
};

//Envio de datos ajax a actualizar
function ajaxFormUpdateLocacion(event) {
    event.preventDefault();

    const dataUpdate = new FormData(formLocacionUpdate);
    document.getElementById("btnUpdateLocacion").value = "Enviando...";

    fetch(formLocacionUpdate.action, {
            method: 'POST',
            body: dataUpdate,
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
                    dtLocacion.draw();
                    $('#formLocacionUpdate').trigger("reset");
                    $('#modalLocacionUpdate').modal('hide');
                    document.getElementById("btnUpdateLocacion").value = "Enviar";
                });
            } else {
                throw response.json().then(error => {
                    for (var clave in error.errors) {
                        let container = $('#' + $.escapeSelector(clave)).closest('div');
                        container.find('input, select, textarea').addClass('is-invalid');
                        container.addClass('is-invalid-container');
                        container.append('<div class="invalid-feedback">' + error.errors[clave] + '</div>');
                    }
                    document.getElementById("btnUpdateLocacion").value = "Enviar";


                })
            }
        })
        .catch(error => {
            console.log('request failed');
        });
}
