var formParteRegister = document.getElementById('formParteRegister');
formParteRegister.addEventListener('submit', ajaxformParteRegister);

var formParteUpdate = document.getElementById('formParteUpdate');
formParteUpdate.addEventListener('submit', ajaxFormUpdateParte);

//datatables settings mantenimientos
dtParte = $('#dataTablePartes').DataTable({
    processing: true,
    serverSide: true,
    responsive: true,
    scrollCollapse: true,
    paging: true,
    stateSave: true,
    autoWidth: false,


    ajax: "/partes/",

    columns: [
        {
            data: 'prioridad',
            name: 'prioridad',
        },
        {
            data: 'nombre',
            name: 'nombre',
        },
        {
            data: 'evaluacion',
            name: 'evaluacion',
        },
        {
            data: 'frecuencia',
            name: 'frecuencia',
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
function ajaxformParteRegister(event) {
    event.preventDefault();
    document.getElementById("btnSaveParte").value = "Enviando...";

    const dataRegister = new FormData(formParteRegister);

    fetch(formParteRegister.action, {
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
                    // console.log(success);
                    dtParte.draw();
                    document.getElementById("btnSaveParte").value = "Enviar";
                    $('#formParteRegister').trigger("reset");
                    $('#modalParteRegister').modal('hide');
                });
            } else {
                throw response.json().then(error => {
                    for (var clave in error.errors) {
                        let container = $('#' + $.escapeSelector(clave)).closest('div');
                        container.find('input, select, textarea').addClass('is-invalid');
                        container.addClass('is-invalid-container');
                        container.append('<div class="invalid-feedback">' + error.errors[clave] + '</div>');
                    }

                    document.getElementById("btnSaveParte").value = "Enviar";
                })
            }
        })
        .catch(error => {
            console.log('request failed');
        });
}

// Traer datos de Parte
function editarParte(ente_id) {
    const url = '/partes/' + ente_id + '/edit'
    const formParteUpdate = document.getElementById('formParteUpdate');
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
                    console.log(success);
                    formParteUpdate.id.value = success.id;
                    formParteUpdate.nombre.value = success.nombre;
                    formParteUpdate.prioridad.value = success.prioridad;
                    formParteUpdate.evaluacion.value = success.evaluacion;
                    formParteUpdate.frecuencia.value = success.frecuencia;
                    formParteUpdate.fuente.value = success.fuente;
                    formParteUpdate.descripcion.value = success.descripcion;
                    $('#modalParteUpdate').modal('show')
                });
            }
        })
        .catch(error => {
            console.log('request failed');
        });
};


//Envio de datos ajax a actualizar
function ajaxFormUpdateParte(event) {
    event.preventDefault();

    const dataUpdate = new FormData(formParteUpdate);
    document.getElementById("btnUpdateParte").value = "Enviando...";

    fetch(formParteUpdate.action, {
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
                    dtParte.draw();
                    $('#formParteUpdate').trigger("reset");
                    $('#modalParteUpdate').modal('hide');
                    document.getElementById("btnUpdateParte").value = "Enviar";
                });
            } else {
                throw response.json().then(error => {
                    for (var clave in error.errors) {
                        let container = $('#' + $.escapeSelector(clave)).closest('div');
                        container.find('input, select, textarea').addClass('is-invalid');
                        container.addClass('is-invalid-container');
                        container.append('<div class="invalid-feedback">' + error.errors[clave] + '</div>');
                    }
                    document.getElementById("btnUpdateParte").value = "Enviar";


                })
            }
        })
        .catch(error => {
            console.log('request failed');
        });
}

// Eliminar Parte
function eliminarParte(ente_id) {
    toastr.options.preventDuplicates = true;
    toastr.warning("<br /><button class='btn btn-sm btn-danger m-1' type='button' value='yes'>Yes</button> <button class='btn btn-sm btn-dark m-1' type ='button'  value='no' > No </button>", 'Desea eliminar este elemento ?', {
        allowHtml: true,
        onclick: function (toast) {
            value = toast.target.value
            if (value == 'yes') {
                const url = '/partes/' + ente_id
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
                                dtParte.draw();
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
