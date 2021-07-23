// document.location.origin + '/gestion-vehiculos' + '/gestion-vehiculos'

document.addEventListener('DOMContentLoaded', function () {

    // datatables settings
    dtClienteCompany = $('#dataTableClienteCompany').DataTable({

        processing: true,
        serverSide: true,
        responsive: true,
        autoWidth: false,
        stateSave: true,

        ajax: "/clientescompany/",

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
function ajaxFormRegisterClienteCompany(event) {
    event.preventDefault();
    document.getElementById("btnSaveClienteCompany").value = "Enviando...";

    if (document.querySelector('.is-invalid')) {

        document.querySelector('.is-invalid').classList.remove('is-invalid');

    }

    const dataRegister = new FormData(formClienteCompanyRegister);

    fetch(formClienteCompanyRegister.action, {
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
                    dtClienteCompany.draw();
                    document.getElementById("btnSaveClienteCompany").value = "Enviar";
                    $('#formClienteCompanyRegister').trigger("reset");
                    $('#modalClienteCompanyRegister').modal('hide');
                });
            } else {
                throw response.json().then(error => {
                    for (var clave in error.errors) {
                        let container = formClienteCompanyRegister.elements.namedItem(clave);
                        container.classList.add('is-invalid');
                        toastr.error(`<li> ${error.errors[clave]} </li>`);
                    }

                    document.getElementById("btnSaveClienteCompany").value = "Enviar";
                })
            }
        })
        .catch(res => {
            (console.log('request failed', res))
        });
}




//Eliminar cliente
function eliminarClienteCompany(ente_id) {
    toastr.options.preventDuplicates = true;
    toastr.warning("<br /><button class='btn btn-sm btn-danger m-1' type='button' value='yes'>Yes</button> <button class='btn btn-sm btn-dark m-1' type ='button'  value='no' > No </button>", 'Desea eliminar este elemento ?', {
        allowHtml: true,
        onclick: function (toast) {
            value = toast.target.value
            if (value == 'yes') {
                const url = '/clientescompany/' + ente_id
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
                                dtClienteCompany.draw();
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
function editarClienteCompany(ente_id) {
    const url = '/clientescompany/' + ente_id + '/edit'
    const formClienteCompanyUpdate = document.getElementById('formClienteCompanyUpdate');
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
                    
                    formClienteCompanyUpdate.id.value = success.id;
                    formClienteCompanyUpdate.nombre.value = success.nombre;
                    formClienteCompanyUpdate.num_contrato.value = success.num_contrato;
                    formClienteCompanyUpdate.obj_contrato.value = success.obj_contrato;
                    formClienteCompanyUpdate.inicio_contrato.value = success.inicio_contrato ;
                    formClienteCompanyUpdate.fin_contrato.value = success.fin_contrato ;
                    formClienteCompanyUpdate.renovacion_contrato.value = success.renovacion_contrato ;
                    formClienteCompanyUpdate.admin.value = success.admin;
                    formClienteCompanyUpdate.email.value = success.email;
                    formClienteCompanyUpdate.tipo_identificacion.value = success.tipo_identificacion;
                    formClienteCompanyUpdate.identificacion.value = success.identificacion;
                    formClienteCompanyUpdate.direccion.value = success.direccion;
                    formClienteCompanyUpdate.ciudad.value = success.ciudad;
                    formClienteCompanyUpdate.departamento.value = success.departamento;
                    formClienteCompanyUpdate.barrio.value = success.barrio;
                    formClienteCompanyUpdate.telefono.value = success.telefono;
                    formClienteCompanyUpdate.opcional_telefono.value = success.opcional_telefono
                    
                    
                    $('#modalClienteCompanyUpdate').modal('show')
                });
            }
        })
        .catch(error => {
            console.log('request failed');
        });
};

//Envio de datos ajax a actualizar
function ajaxFormUpdateClienteCompany(event) {
    event.preventDefault();

    const dataUpdate = new FormData(formClienteCompanyUpdate);
    document.getElementById("btnUpdateClienteCompany").value = "Enviando...";

    if (document.querySelector('.is-invalid')) {

        document.querySelector('.is-invalid').classList.remove('is-invalid');

    }

    fetch(formClienteCompanyUpdate.action, {
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
                    dtClienteCompany.draw();
                    $('#formClienteCompanyUpdate').trigger("reset");
                    $('#modalClienteCompanyUpdate').modal('hide');
                    document.getElementById("btnUpdateClienteCompany").value = "Enviar";
                });
            } else {
                throw response.json().then(error => {
                    for (var clave in error.errors) {
                        let container = formClienteCompanyUpdate.elements.namedItem(clave);
                        container.classList.add('is-invalid');
                        toastr.error(`<li> ${error.errors[clave]} </li>`);
                    }

                    document.getElementById("btnUpdateClienteCompany").value = "Enviar";
                })
            }
        })
        .catch(error => {
            console.log('request failed');
        });
}
