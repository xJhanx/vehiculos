
var formHallazgoRegister = document.getElementById('formHallazgoRegister');
formHallazgoRegister.addEventListener('submit', ajaxformHallazgoRegister);

var formHallazgoUpdate = document.getElementById('formHallazgoUpdate');
formHallazgoUpdate.addEventListener('submit', ajaxFormUpdateHallazgo);

document.addEventListener('DOMContentLoaded', function () {

    // datatables settings
    dtHallazgos = $('#dataTableHallazgos').DataTable({
        processing: true,
        serverSide: true,
        responsive: true,
        autoWidth: false,
        paging: true,
        scrollY: '150px',
        stateSave: true,
        ajax:   "/hallazgos/" + token,

        columns: [{
                data: 'DT_RowIndex',
                name: 'DT_RowIndex',
                orderable: false,
                searchable: false
            },
            {
                data: 'created_at',
                name: 'created_at'
            },
            {
                data: 'observacion',
                name: 'observacion'
            },
            {
                data: 'prioridad',
                name: 'prioridad'
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
            [0, 'asc']
        ]

    });

});


//Envio de datos ajax
function ajaxformHallazgoRegister(event) {
    event.preventDefault();
    document.getElementById("btnSaveHallazgo").value = "Enviando...";

    const dataRegister = new FormData(formHallazgoRegister);

    fetch(formHallazgoRegister.action, {
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
                    dtHallazgos.draw();
                    document.getElementById("btnSaveHallazgo").value = "Enviar";
                    $('#formHallazgoRegister').trigger("reset");
                    $('#modalHallazgoRegister').modal('hide');
                });
            } else {
                throw response.json().then(error => {
                    for (var clave in error.errors) {
                        let container = $('#' + $.escapeSelector(clave)).closest('div');
                        container.find('input, select, textarea').addClass('is-invalid');
                        container.addClass('is-invalid-container');
                        container.append('<div class="invalid-feedback">' + error.errors[clave] + '</div>');
                    }

                    document.getElementById("btnSaveHallazgo").value = "Enviar";
                })
            }
        })
        .catch(error => {
            console.log('request failed');
        });
}

//Eliminar cliente
function eliminarHallazgo(ente_id) {
    toastr.options.preventDuplicates = true;
    toastr.warning("<br /><button class='btn btn-sm btn-success m-1' type='button' value='yes'>Yes</button> <button class='btn btn-sm btn-dark m-1' type ='button'  value='no' > No </button>", 'Desea eliminar este elemento ?', {
        allowHtml: true,
        onclick: function (toast) {
            value = toast.target.value
            if (value == 'yes') {
                const url =  '/hallazgos/' + ente_id
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
                                dtHallazgos.draw();
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
function editarHallazgo(ente_id) {
    const url =  '/hallazgos/' + ente_id + '/edit'
    const formHallazgoUpdate = document.getElementById('formHallazgoUpdate');
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
                    formHallazgoUpdate.id.value = success.id;
                    formHallazgoUpdate.observacion.value = success.observacion;
                    formHallazgoUpdate.estado.value = success.estado;
                    formHallazgoUpdate.prioridad.value = success.prioridad;
                    $('#modalHallazgoUpdate').modal('show')
                });
            }
        })
        .catch(error => {
            console.log('request failed');
        });
};

//Envio de datos ajax a actualizar
function ajaxFormUpdateHallazgo(event) {
    event.preventDefault();

    const dataUpdate = new FormData(formHallazgoUpdate);
    document.getElementById("btnUpdateHallazgo").value = "Enviando...";

    fetch(formHallazgoUpdate.action, {
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
                    dtHallazgos.draw();
                    $('#formHallazgoUpdate').trigger("reset");
                    $('#modalHallazgoUpdate').modal('hide');
                    document.getElementById("btnUpdateHallazgo").value = "Enviar";
                });
            } else {
                throw response.json().then(error => {
                    for (var clave in error.errors) {
                        let container = $('#' + $.escapeSelector(clave)).closest('div');
                        container.find('input, select, textarea').addClass('is-invalid');
                        container.addClass('is-invalid-container');
                        container.append('<div class="invalid-feedback">' + error.errors[clave] + '</div>');
                    }
                    document.getElementById("btnUpdateHallazgo").value = "Enviar";


                })
            }
        })
        .catch(error => {
            console.log('request failed');
        });
}

