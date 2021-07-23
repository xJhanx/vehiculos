
var formRelacionRegister = document.getElementById('formRelacionRegister');
formRelacionRegister.addEventListener('submit', ajaxformRelacionRegister);

var formRelacionUpdate = document.getElementById('formRelacionUpdate');
formRelacionUpdate.addEventListener('submit', ajaxFormUpdateRelacion);

//datatables settings mantenimientos
$.fn.dataTable.ext.errMode = 'none';
dtRelacion = $('#dataTableRelacions').DataTable({
    processing: true,
    serverSide: true,
    responsive: true,
    scrollCollapse: true,
    paging: true,
    autoWidth: false,
    stateSave: true,
    ajax:  "/relacions",

    columns: [{
            data: 'DT_RowIndex',
            name: 'DT_RowIndex',
            orderable: false,
            searchable: false,

        },

        {
            data: 'updated_at',
            name: 'updated_at',
        },

        {
            data: 'vehiculo.placa',
            name: 'vehiculo.placa',
        },

        {
            data: 'autoparte.nombre',
            name: 'autoparte.nombre',
        },

        {
            data: 'cantidad',
            name: 'cantidad',
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
function ajaxformRelacionRegister(event) {
    event.preventDefault();
    document.getElementById("btnSaveRelacion").value = "Enviando...";

    const dataRegister = new FormData(formRelacionRegister);

    fetch(formRelacionRegister.action, {
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
                    // toastr.info('Success:', success);
                    console.log(success);
                    dtRelacion.draw();
                    document.getElementById("btnSaveRelacion").value = "Enviar";
                    $('#formRelacionRegister').trigger("reset");
                    $('#modalRelacionRegister').modal('hide');
                });
            } else {
                throw response.json().then(error => {
                    for (var clave in error.errors) {
                        let container = $('#' + $.escapeSelector(clave)).closest('div');
                        container.find('input, select, textarea').addClass('is-invalid');
                        container.addClass('is-invalid-container');
                        container.append('<div class="invalid-feedback">' + error.errors[clave] + '</div>');
                    }

                    document.getElementById("btnSaveRelacion").value = "Enviar";
                })
            }
        })
        .catch(error => {
            console.log('request failed');
        });
}

// Traer datos de cliente
function editarRelacion(ente_id) {
    const url =  '/relaciones/' + ente_id + '/edit'
    console.log(url);
    const formRelacionUpdate = document.getElementById('formRelacionUpdate');
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

                    formRelacionUpdate.id.value = success.id;
                    formRelacionUpdate.nombre.value = success.nombre;
                    formRelacionUpdate.referencia.value = success.referencia;
                    formRelacionUpdate.descripcion.value = success.descripcion;
                    formRelacionUpdate.cantidad.value = success.cantidad;
                    // formRelacionUpdate.disponibilidad.value = success.disponibilidad;
                    console.log(success);
                    $('#modalRelacionUpdate').modal('show')
                });
            }
        })
        .catch(error => {
            console.log('request failed');
        });
};


//Envio de datos ajax a actualizar
function ajaxFormUpdateRelacion(event) {
    event.preventDefault();

    const dataUpdate = new FormData(formRelacionUpdate);
    document.getElementById("btnUpdateRelacion").value = "Enviando...";

    fetch(formRelacionUpdate.action, {
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
                    dtRelacion.draw();
                    $('#formRelacionUpdate').trigger("reset");
                    $('#modalRelacionUpdate').modal('hide');
                    document.getElementById("btnUpdateRelacion").value = "Enviar";
                });
            } else {
                throw response.json().then(error => {
                    for (var clave in error.errors) {
                        let container = $('#' + $.escapeSelector(clave)).closest('div');
                        container.find('input, select, textarea').addClass('is-invalid');
                        container.addClass('is-invalid-container');
                        container.append('<div class="invalid-feedback">' + error.errors[clave] + '</div>');
                    }
                    document.getElementById("btnUpdateRelacion").value = "Enviar";


                })
            }
        })
        .catch(error => {
            console.log('request failed');
        });
}

// Eliminar cliente
function eliminarRelacion(ente_id) {
    // console.log()
    toastr.options.preventDuplicates = true;
    toastr.warning("<br /><button class='btn btn-sm btn-danger m-1' type='button' value='yes'>Yes</button> <button class='btn btn-sm btn-dark m-1' type ='button'  value='no' > No </button>", 'Desea eliminar este elemento ?', {
        allowHtml: true,
        onclick: function (toast) {
            value = toast.target.value
            if (value == 'yes') {
                const url =  '/relacions/' + ente_id
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
                                dtRelacion.draw();
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
