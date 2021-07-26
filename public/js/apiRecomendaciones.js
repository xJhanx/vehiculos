
var formRecomendacionRegister = document.getElementById('formRecomendacionRegister');
formRecomendacionRegister.addEventListener('submit', ajaxformRecomendacionRegister);

var formRecomendacionUpdate = document.getElementById('formRecomendacionUpdate');
formRecomendacionUpdate.addEventListener('submit', ajaxFormUpdateRecomendacion);

//datatables settings mantenimientos
dtRecomendacion = $('#dataTableRecomendaciones').DataTable({
    processing: true,
    serverSide: true,
    // responsive: true,
    stateSave: true,
    // scrollCollapse: true,
    paging: true,
    autoWidth: false,


    ajax: "/recomendaciones/" + vehiculo,
    columns: [

        {
            data: 'parte.nombre',
            name: 'parte.nombre',
        },
        {
            data: 'parte.prioridad',
            name: 'parte.prioridad',
        },
        {
            data: 'km_actual',
            name: 'km_actual',
        },
        {
            data: 'fecha_programado',
            name: 'fecha_programado',
        },
        {
            data: 'km_siguiente',
            name: 'km_siguiente',

        },
        {
            data: 'fecha_siguiente',
            name: 'fecha_siguiente',

        },
       
        {
            data: 'seguimiento',
            name: 'seguimiento',

        },
        {
            data: 'parte.fuente',
            name: 'parte.fuente',

        },

        {
            data: 'observacion',
            name: 'observacion',

        },

        {
            data: 'cant_programado',
            name: 'cant_programado',

        },

        {
            data: 'cant_ejecutado',
            name: 'cant_ejecutado',

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
function ajaxformRecomendacionRegister(event) {
    event.preventDefault();
    document.getElementById("btnSaveRecomendacion").value = "Enviando...";

    const dataRegister = new FormData(formRecomendacionRegister);

    fetch(formRecomendacionRegister.action, {
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
                    // console.log(success);
                    dtRecomendacion.draw();
                    document.getElementById("btnSaveRecomendacion").value = "Enviar";
                    $('#formRecomendacionRegister').trigger("reset");
                    $('#modalRecomendacionRegister').modal('hide');

                    notificarfc();
                    notificardias();
                    notificarkm();
                });
            } else {
                throw response.json().then(error => {
                    for (var clave in error.errors) {
                        let container = $('#' + $.escapeSelector(clave)).closest('div');
                        container.find('input, select, textarea').addClass('is-invalid');
                        container.addClass('is-invalid-container');
                        container.append('<div class="invalid-feedback">' + error.errors[clave] + '</div>');
                    }

                    document.getElementById("btnSaveRecomendacion").value = "Enviar";
                })
            }
        })
        .catch(error => {
            console.log('request failed');
        });
}

// Traer datos de cliente
function editarRecomendacion(ente_id) {
    const url = '/recomendaciones/' + ente_id + '/edit'
    const formRecomendacionUpdate = document.getElementById('formRecomendacionUpdate');
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
                    formRecomendacionUpdate.id.value = success.id;
                    formRecomendacionUpdate.parte_id.value = success.parte_id;
                    $('#modalRecomendacionUpdate').modal('show')
                });
            }
        })
        .catch(error => {
            console.log('request failed');
        });
};


//Envio de datos ajax a actualizar
function ajaxFormUpdateRecomendacion(event) {
    event.preventDefault();

    const dataUpdate = new FormData(formRecomendacionUpdate);
    document.getElementById("btnUpdateRecomendacion").value = "Enviando...";

    fetch(formRecomendacionUpdate.action, {
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
                    console.log(success);
                    dtRecomendacion.draw();
                    $('#formRecomendacionUpdate').trigger("reset");
                    $('#modalRecomendacionUpdate').modal('hide');
                    notificarfc();
                    notificardias();
                    notificarkm();
                    document.getElementById("btnUpdateRecomendacion").value = "Enviar";
                });
            } else {
                throw response.json().then(error => {
                    for (var clave in error.errors) {
                        let container = $('#' + $.escapeSelector(clave)).closest('div');
                        container.find('input, select, textarea').addClass('is-invalid');
                        container.addClass('is-invalid-container');
                        container.append('<div class="invalid-feedback">' + error.errors[clave] + '</div>');
                    }
                    document.getElementById("btnUpdateRecomendacion").value = "Enviar";


                })
            }
        })
        .catch(error => {
            console.log('request failed');
        });
}


// Eliminar cliente
function eliminarRecomendacion(ente_id) {
    toastr.options.preventDuplicates = true;
    toastr.warning("<br /><button class='btn btn-sm btn-danger m-1' type='button' value='yes'>Yes</button> <button class='btn btn-sm btn-dark m-1' type ='button'  value='no' > No </button>", 'Desea eliminar este elemento ?', {
        allowHtml: true,
        onclick: function (toast) {
            value = toast.target.value
            if (value == 'yes') {
                const url = '/recomendaciones/' + ente_id
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

                                toastr.info('Success:', success);
                                dtRecomendacion.draw();
                                toastr.remove()
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