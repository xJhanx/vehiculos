
var formLavadoRegister = document.getElementById('formLavadoRegister');
formLavadoRegister.addEventListener('submit', ajaxformLavadoRegister);

var formLavadoUpdate = document.getElementById('formLavadoUpdate');
formLavadoUpdate.addEventListener('submit', ajaxFormUpdatedLavado);

document.addEventListener('DOMContentLoaded', function () {

    // datatables settings
    dtLavados = $('#dataTableLavados').DataTable({
        processing: true,
        serverSide: true,
        responsive: true,
        autoWidth: false,
        paging: true,
        scrollY: '120px',
        stateSave: true,
        ajax:  "/lavados/auto/" + token,

        columns: [{
            data: 'DT_RowIndex',
            name: 'DT_RowIndex',
            orderable: false,
            searchable: false
        },
        {
            data: 'km_registrado',
            name: 'km_registrado'
        },
        {
            data: 'f_ingreso',
            name: 'f_ingreso'
        },
        {
            data: 'observacion',
            name: 'observacion'
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
function ajaxformLavadoRegister(event) {
    event.preventDefault();
    document.getElementById("btnSaveLavado").value = "Enviando...";

    const dataRegister = new FormData(formLavadoRegister);

    fetch(formLavadoRegister.action, {
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
                    dtLavados.draw();
                    document.getElementById("btnSaveLavado").value = "Enviar";
                    $('#formLavadoRegister').trigger("reset");
                    $('#modalLavadoRegister').modal('hide');
                });
            } else {
                throw response.json().then(error => {
                    for (var clave in error.errors) {
                        let container = $('#' + $.escapeSelector(clave)).closest('div');
                        container.find('input, select, textarea').addClass('is-invalid');
                        container.addClass('is-invalid-container');
                        container.append('<div class="invalid-feedback">' + error.errors[clave] + '</div>');
                    }

                    document.getElementById("btnSaveLavado").value = "Enviar";
                })
            }
        })
        .catch(error => {
            console.log('request failed');
        });
}

//Eliminar cliente
function eliminarLavado(ente_id) {
    toastr.options.preventDuplicates = true;
    toastr.warning("<br /><button class='btn btn-sm btn-success m-1' type='button' value='yes'>Yes</button> <button class='btn btn-sm btn-dark m-1' type ='button'  value='no' > No </button>", 'Desea eliminar este elemento ?', {
        allowHtml: true,
        onclick: function (toast) {
            value = toast.target.value
            if (value == 'yes') {
                const url =  '/lavados/' + ente_id
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
                                dtLavados.draw();
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
function editarLavado(ente_id) {
    const url =  '/lavados/' + ente_id + '/edit'
    const formLavadoUpdate = document.getElementById('formLavadoUpdate');
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
                    formLavadoUpdate.id.value = success.id;
                    formLavadoUpdate.f_ingreso.value = success.f_ingreso;
                    formLavadoUpdate.km_registrado.value = success.km_registrado;
                    formLavadoUpdate.observacion.value = success.observacion;
                    $('#modalLavadoUpdate').modal('show')
                });
            }
        })
        .catch(error => {
            console.log('request failed');
        });
};

//Envio de datos ajax a actualizar
function ajaxFormUpdatedLavado(event) {
    event.preventDefault();

    const dataUpdate = new FormData(formLavadoUpdate);
    document.getElementById("btnUpdateLavado").value = "Enviando...";

    fetch(formLavadoUpdate.action, {
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
                    dtLavados.draw();
                    $('#formLavadoUpdate').trigger("reset");
                    $('#modalLavadoUpdate').modal('hide');
                    document.getElementById("btnUpdateLavado").value = "Enviar";
                });
            } else {
                throw response.json().then(error => {
                    for (var clave in error.errors) {
                        let container = $('#' + $.escapeSelector(clave)).closest('div');
                        container.find('input, select, textarea').addClass('is-invalid');
                        container.addClass('is-invalid-container');
                        container.append('<div class="invalid-feedback">' + error.errors[clave] + '</div>');
                    }
                    document.getElementById("btnUpdateLavado").value = "Enviar";


                })
            }
        })
        .catch(error => {
            console.log('request failed');
        });
}

