
var formAutoparteRegister = document.getElementById('formAutoparteRegister');
formAutoparteRegister.addEventListener('submit', ajaxformAutoparteRegister);

var formAutoparteUpdate = document.getElementById('formAutoparteUpdate');
formAutoparteUpdate.addEventListener('submit', ajaxFormUpdateAutoparte);

//datatables settings mantenimientos
dtAutoparte = $('#dataTableAutopartes').DataTable({
    processing: true,
    serverSide: true,
    responsive: true,
    scrollCollapse: true,
    paging: true,
    autoWidth: false,
    stateSave: true,

    // ajax:  "/autopartes/misautopartes/" + document.getElementById('vehiculo_id').value,
    ajax:  "/autopartes",

    columns: [{
            data: 'DT_RowIndex',
            name: 'DT_RowIndex',
            orderable: false,
            searchable: false,


        },

        {
            data: 'nombre',
            name: 'nombre',
        },

        {
            data: 'valor_unidad',
            name: 'valor_unidad',
        },

        {
            data: 'cantidad',
            name: 'cantidad',
        },

        {
            data: 'descripcion',
            name: 'descripcion',
        },

        {
            data: 'referencia',
            name: 'referencia',
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
function ajaxformAutoparteRegister(event) {
    event.preventDefault();
    document.getElementById("btnSaveAutoparte").value = "Enviando...";

    const dataRegister = new FormData(formAutoparteRegister);

    fetch(formAutoparteRegister.action, {
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
                    dtAutoparte.draw();
                    document.getElementById("btnSaveAutoparte").value = "Enviar";
                    $('#formAutoparteRegister').trigger("reset");
                    $('#modalAutoparteRegister').modal('hide');
                });
            } else {
                throw response.json().then(error => {
                    for (var clave in error.errors) {
                        let container = $('#' + $.escapeSelector(clave)).closest('div');
                        container.find('input, select, textarea').addClass('is-invalid');
                        container.addClass('is-invalid-container');
                        container.append('<div class="invalid-feedback">' + error.errors[clave] + '</div>');
                    }

                    document.getElementById("btnSaveAutoparte").value = "Enviar";
                })
            }
        })
        .catch(error => {
            console.log('request failed');
        });
}

// Traer datos de cliente
function editarAutoparte(ente_id) {
    const url =  '/autopartes/' + ente_id + '/edit'
    console.log(url);
    const formAutoparteUpdate = document.getElementById('formAutoparteUpdate');
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

                    formAutoparteUpdate.id.value = success.id;
                    formAutoparteUpdate.nombre.value = success.nombre;
                    formAutoparteUpdate.referencia.value = success.referencia;
                    formAutoparteUpdate.descripcion.value = success.descripcion;
                    formAutoparteUpdate.cantidad.value = success.cantidad;
                    formAutoparteUpdate.valor_unidad.value = success.valor_unidad;
                    formAutoparteUpdate.num_factura.value = success.num_factura;
                    $('#modalAutoparteUpdate').modal('show')
                });
            }
        })
        .catch(error => {
            console.log('request failed');
        });
};


//Envio de datos ajax a actualizar
function ajaxFormUpdateAutoparte(event) {
    event.preventDefault();

    const dataUpdate = new FormData(formAutoparteUpdate);
    document.getElementById("btnUpdateAutoparte").value = "Enviando...";

    fetch(formAutoparteUpdate.action, {
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
                    dtAutoparte.draw();
                    $('#formAutoparteUpdate').trigger("reset");
                    $('#modalAutoparteUpdate').modal('hide');
                    document.getElementById("btnUpdateAutoparte").value = "Enviar";
                });
            } else {
                throw response.json().then(error => {
                    for (var clave in error.errors) {
                        let container = $('#' + $.escapeSelector(clave)).closest('div');
                        container.find('input, select, textarea').addClass('is-invalid');
                        container.addClass('is-invalid-container');
                        container.append('<div class="invalid-feedback">' + error.errors[clave] + '</div>');
                    }
                    document.getElementById("btnUpdateAutoparte").value = "Enviar";


                })
            }
        })
        .catch(error => {
            console.log('request failed');
        });
}

// Eliminar cliente
function eliminarAutoparte(ente_id) {
    toastr.options.preventDuplicates = true;
    toastr.warning("<br /><button class='btn btn-sm btn-danger m-1' type='button' value='yes'>Yes</button> <button class='btn btn-sm btn-dark m-1' type ='button'  value='no' > No </button>", 'Desea eliminar este elemento ?', {
        allowHtml: true,
        onclick: function (toast) {
            value = toast.target.value
            if (value == 'yes') {
                const url =  '/autopartes/' + ente_id
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
                                dtAutoparte.draw();
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
