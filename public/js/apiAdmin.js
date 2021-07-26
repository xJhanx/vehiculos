
document.addEventListener('DOMContentLoaded', function () {

    // datatables settings
    dtAdmins = $('#dataTableAdmins').DataTable({

        processing: true,
        serverSide: true,
        responsive: true,
        autoWidth: false,
        stateSave: true,

        ajax: "/admins/",

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
function ajaxFormRegisterAdmin(event) {
    event.preventDefault();
    document.getElementById("btnSaveAdmin").value = "Enviando...";

    if (document.querySelector('.is-invalid')) {

        document.querySelector('.is-invalid').classList.remove('is-invalid');

    }

    const dataRegister = new FormData(formAdminRegister);

    fetch(formAdminRegister.action, {
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
                    dtAdmins.draw();
                    document.getElementById("btnSaveAdmin").value = "Enviar";
                    $('#formAdminRegister').trigger("reset");
                    $('#modalAdminRegister').modal('hide');
                });
            } else {
                throw response.json().then(error => {
                    for (var clave in error.errors) {
                        let container = formAdminRegister.elements.namedItem(clave);
                        container.classList.add('is-invalid');
                        toastr.error(`<li> ${error.errors[clave]} </li>`);
                    }

                    document.getElementById("btnSaveAdmin").value = "Enviar";
                })
            }
        })
        .catch(res => {
            (console.log('request failed', res))
        });
}




//Eliminar cliente
function eliminarAdmin(ente_id) {
    toastr.options.preventDuplicates = true;
    toastr.warning("<br /><button class='btn btn-sm btn-danger m-1' type='button' value='yes'>Yes</button> <button class='btn btn-sm btn-dark m-1' type ='button'  value='no' > No </button>", 'Desea eliminar este elemento ?', {
        allowHtml: true,
        onclick: function (toast) {
            value = toast.target.value
            if (value == 'yes') {
                const url = '/admins/' + ente_id
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
                                dtAdmins.draw();
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
function editarAdmin(ente_id) {
    const url = '/admins/' + ente_id + '/edit'
    const formAdminUpdate = document.getElementById('formAdminUpdate');
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
                    formAdminUpdate.id.value = success.id;
                    formAdminUpdate.nombre.value = success.nombre;
                    formAdminUpdate.apellido.value = success.apellido;
                    formAdminUpdate.inicio_contrato.value = success.inicio_contrato;
                    formAdminUpdate.fin_contrato.value = success.fin_contrato;
                    formAdminUpdate.renovacion_contrato.value = success.renovacion_contrato;
                    
                    formAdminUpdate.eps.value = success.eps;
                    formAdminUpdate.arl.value = success.arl;
                    formAdminUpdate.cc.value = success.cc;
                    formAdminUpdate.email.value = success.email;
                    
                    formAdminUpdate.tipo_identificacion.value = success.tipo_identificacion;
                    formAdminUpdate.identificacion.value = success.identificacion;
                    formAdminUpdate.direccion.value = success.direccion;
                    formAdminUpdate.ciudad.value = success.ciudad;
                    formAdminUpdate.departamento.value = success.departamento;
                    formAdminUpdate.barrio.value = success.barrio;
                    formAdminUpdate.telefono.value = success.telefono;
                    formAdminUpdate.opcional_telefono.value = success.opcional_telefono
                    $('#modalAdminUpdate').modal('show')
                });
            }
        })
        .catch(error => {
            console.log('request failed');
        });
};

//Envio de datos ajax a actualizar
function ajaxFormUpdateAdmin(event) {
    event.preventDefault();

    const dataUpdate = new FormData(formAdminUpdate);
    document.getElementById("btnUpdateAdmin").value = "Enviando...";

    if (document.querySelector('.is-invalid')) {

        document.querySelector('.is-invalid').classList.remove('is-invalid');

    }

    fetch(formAdminUpdate.action, {
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
                    dtAdmins.draw();
                    $('#formAdminUpdate').trigger("reset");
                    $('#modalAdminUpdate').modal('hide');
                    document.getElementById("btnUpdateAdmin").value = "Enviar";
                });
            } else {
                throw response.json().then(error => {
                    for (var clave in error.errors) {
                        let container = formAdminUpdate.elements.namedItem(clave);
                        container.classList.add('is-invalid');
                        toastr.error(`<li> ${error.errors[clave]} </li>`);
                    }

                    document.getElementById("btnUpdateAdmin").value = "Enviar";
                })
            }
        })
        .catch(error => {
            console.log('request failed');
        });
}
