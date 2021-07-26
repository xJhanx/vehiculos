// document.location.origin + '/gestion-vehiculos' + '/gestion-vehiculos'

document.addEventListener('DOMContentLoaded', function () {

    // datatables settings
    dtDesignados = $('#dataTableDesignados').DataTable({

        processing: true,
        serverSide: true,
        responsive: true,
        autoWidth: false,
        stateSave: true,

        ajax: "/designados/",

        columns: [{
            data: 'DT_RowIndex',
            name: 'DT_RowIndex',
            orderable: false,
            searchable: false
        },
        {
            data: 'fullname',
            name: 'fullname'
        },
        {
            data: 'email',
            name: 'email'
        },
        {
            data: 'direccion',
            name: 'direccion'
        },
        {
            data: 'barrio',
            name: 'barrio'
        },
        {
            data: 'ciudad',
            name: 'ciudad'
        },
        {
            data: 'departamento',
            name: 'departamento'
        },
        {
            data: 'telefono',
            name: 'telefono'
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
function ajaxFormRegisterDesignado(event) {
    event.preventDefault();
    document.getElementById("btnSaveDesignado").value = "Enviando...";

    if (document.querySelector('.is-invalid')) {

        document.querySelector('.is-invalid').classList.remove('is-invalid');

    }

    const dataRegister = new FormData(formDesignadoRegister);

    fetch(formDesignadoRegister.action, {
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
                    dtDesignados.draw();
                    document.getElementById("btnSaveDesignado").value = "Enviar";
                    $('#formDesignadoRegister').trigger("reset");
                    $('#modalDesignadoRegister').modal('hide');
                });
            } else {
                throw response.json().then(error => {
                    for (var clave in error.errors) {
                        let container = formDesignadoRegister.elements.namedItem(clave);
                        container.classList.add('is-invalid');
                        toastr.error(`<li> ${error.errors[clave]} </li>`);
                    }

                    document.getElementById("btnSaveDesignado").value = "Enviar";
                })
            }
        })
        .catch(res => {
            (console.log('request failed', res))
        });
}




//Eliminar cliente
function eliminarDesignado(ente_id) {
    toastr.options.preventDuplicates = true;
    toastr.warning("<br /><button class='btn btn-sm btn-danger m-1' type='button' value='yes'>Yes</button> <button class='btn btn-sm btn-dark m-1' type ='button'  value='no' > No </button>", 'Desea eliminar este elemento ?', {
        allowHtml: true,
        onclick: function (toast) {
            value = toast.target.value
            if (value == 'yes') {
                const url = '/designados/' + ente_id
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
                                dtDesignados.draw();
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
function editarDesignado(ente_id) {
    const url = '/designados/' + ente_id + '/edit'
    const formDesignadoUpdate = document.getElementById('formDesignadoUpdate');
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
                    formDesignadoUpdate.id.value = success.id;
                    formDesignadoUpdate.nombre.value = success.nombre;
                    formDesignadoUpdate.apellido.value = success.apellido;
                    formDesignadoUpdate.email.value = success.email;
                    formDesignadoUpdate.tipo_identificacion.value = success.tipo_identificacion;
                    formDesignadoUpdate.identificacion.value = success.identificacion;
                    formDesignadoUpdate.direccion.value = success.direccion;
                    formDesignadoUpdate.ciudad.value = success.ciudad;
                    formDesignadoUpdate.departamento.value = success.departamento;
                    formDesignadoUpdate.barrio.value = success.barrio;
                    formDesignadoUpdate.telefono.value = success.telefono;
                    formDesignadoUpdate.opcional_telefono.value = success.opcional_telefono
                    $('#modalDesignadoUpdate').modal('show')
                });
            }
        })
        .catch(error => {
            console.log('request failed');
        });
};

//Envio de datos ajax a actualizar
function ajaxFormUpdateDesignado(event) {
    event.preventDefault();

    const dataUpdate = new FormData(formDesignadoUpdate);
    document.getElementById("btnUpdateDesignado").value = "Enviando...";

    if (document.querySelector('.is-invalid')) {

        document.querySelector('.is-invalid').classList.remove('is-invalid');

    }

    fetch(formDesignadoUpdate.action, {
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
                    dtDesignados.draw();
                    $('#formDesignadoUpdate').trigger("reset");
                    $('#modalDesignadoUpdate').modal('hide');
                    document.getElementById("btnUpdateDesignado").value = "Enviar";
                });
            } else {
                throw response.json().then(error => {
                    for (var clave in error.errors) {
                        let container = formDesignadoUpdate.elements.namedItem(clave);
                        container.classList.add('is-invalid');
                        toastr.error(`<li> ${error.errors[clave]} </li>`);
                    }

                    document.getElementById("btnUpdateDesignado").value = "Enviar";
                })
            }
        })
        .catch(error => {
            console.log('request failed');
        });
}

function verDesignado(ente_id) {
    const url = '/designado/detalles/' + ente_id + '';
    window.location.href = url;
}
