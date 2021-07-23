var formElementoRegister = document.getElementById('formElementoRegister');
formElementoRegister.addEventListener('submit', ajaxformElementoRegister);

var formElementoUpdate = document.getElementById('formElementoUpdate');
formElementoUpdate.addEventListener('submit', ajaxFormUpdateElemento);

//datatables settings mantenimientos
dtElemento = $('#dataTableElementos').DataTable({
    processing: true,
    serverSide: true,
    responsive: true,
    scrollCollapse: true,
    paging: true,
    stateSave: true,
    autoWidth: false,


    ajax:  "/elementos/miselementos/" + vehiculo,

    columns: [{
            data: 'DT_RowIndex',
            name: 'DT_RowIndex',
            orderable: false,
            searchable: false,

        },

        {
            data: 'tipo',
            name: 'tipo',
        },

        {
            data: 'descripcion',
            name: 'descripcion',
        },

        {
            data: 'cantidad',
            name: 'cantidad',
        },

        {
            data: 'observacion',
            name: 'observacion',
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
function ajaxformElementoRegister(event) {
    event.preventDefault();
    document.getElementById("btnSaveElemento").value = "Enviando...";

    const dataRegister = new FormData(formElementoRegister);

    fetch(formElementoRegister.action, {
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
                    dtElemento.draw();
                    document.getElementById("btnSaveElemento").value = "Enviar";
                    $('#formElementoRegister').trigger("reset");
                    $('#modalElementoRegister').modal('hide');
                });
            } else {
                throw response.json().then(error => {
                    for (var clave in error.errors) {
                        let container = $('#' + $.escapeSelector(clave)).closest('div');
                        container.find('input, select, textarea').addClass('is-invalid');
                        container.addClass('is-invalid-container');
                        container.append('<div class="invalid-feedback">' + error.errors[clave] + '</div>');
                    }

                    document.getElementById("btnSaveElemento").value = "Enviar";
                })
            }
        })
        .catch(error => {
            console.log('request failed');
        });
}

// Traer datos de cliente
function editarElemento(ente_id) {
    const url =  '/elementos/' + ente_id + '/edit'
    const formElementoUpdate = document.getElementById('formElementoUpdate');
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

                    formElementoUpdate.id.value = success.id;
                    formElementoUpdate.tipo.value = success.tipo;
                    formElementoUpdate.descripcion.value = success.descripcion;
                    formElementoUpdate.cantidad.value = success.cantidad;
                    formElementoUpdate.observacion.value = success.observacion;
                    formElementoUpdate.disponibilidad.value = success.disponibilidad;
                    // console.log(success);
                    $('#modalElementoUpdate').modal('show')
                });
            }
        })
        .catch(error => {
            console.log('request failed');
        });
};


//Envio de datos ajax a actualizar
function ajaxFormUpdateElemento(event) {
    event.preventDefault();

    const dataUpdate = new FormData(formElementoUpdate);
    document.getElementById("btnUpdateElemento").value = "Enviando...";

    fetch(formElementoUpdate.action, {
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
                    dtElemento.draw();
                    $('#formElementoUpdate').trigger("reset");
                    $('#modalElementoUpdate').modal('hide');
                    document.getElementById("btnUpdateElemento").value = "Enviar";
                });
            } else {
                throw response.json().then(error => {
                    for (var clave in error.errors) {
                        let container = $('#' + $.escapeSelector(clave)).closest('div');
                        container.find('input, select, textarea').addClass('is-invalid');
                        container.addClass('is-invalid-container');
                        container.append('<div class="invalid-feedback">' + error.errors[clave] + '</div>');
                    }
                    document.getElementById("btnUpdateElemento").value = "Enviar";


                })
            }
        })
        .catch(error => {
            console.log('request failed');
        });
}

// Eliminar cliente
function eliminarElemento(ente_id) {
    toastr.options.preventDuplicates = true;
    toastr.warning("<br /><button class='btn btn-sm btn-danger m-1' type='button' value='yes'>Yes</button> <button class='btn btn-sm btn-dark m-1' type ='button'  value='no' > No </button>", 'Desea eliminar este elemento ?', {
        allowHtml: true,
        onclick: function (toast) {
            value = toast.target.value
            if (value == 'yes') {
                const url =  '/elementos/' + ente_id
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
                                dtElemento.draw();
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
