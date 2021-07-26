
document.addEventListener('DOMContentLoaded', function () {

    // datatables settings
    dtProveedors = $('#dataTableProveedors').DataTable({
        processing: true,
        // serverSide: true,
        responsive: true,
        autoWidth: false,

        ajax: "/proveedors/",

        columns: [{
            data: 'DT_RowIndex',
            name: 'DT_RowIndex',
            orderable: false,
            searchable: false
        },
        {
            data: 'fullname',
            name: 'fullname',
            orderable: true,
            searchable: true
        },
        {
            data: 'email',
            name: 'email',
            orderable: true,
            searchable: true
        },
        {
            data: 'direccion',
            name: 'direccion',
            orderable: false,
            searchable: false
        },
        {
            data: 'barrio',
            name: 'barrio',
            orderable: false,
            searchable: false
        },
        {
            data: 'ciudad',
            name: 'ciudad',
            orderable: true,
            searchable: true
        },
        {
            data: 'departamento',
            name: 'departamento',
            orderable: true,
            searchable: true
        },
        {
            data: 'telefono',
            name: 'telefono',
            orderable: false,
            searchable: false
        },
        {
            data: 'action',
            name: 'action',
            orderable: false,
            searchable: false
        },
        ],
    });

});


//Envio de datos ajax
function ajaxFormRegisterProveedor(event) {
    event.preventDefault();
    document.getElementById("btnSaveProveedor").value = "Enviando...";

    const dataRegister = new FormData(formProveedorRegister);
    if (document.querySelector('.is-invalid')) {

        document.querySelector('.is-invalid').classList.remove('is-invalid');

    }

    fetch(formProveedorRegister.action, {
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
                    dtProveedors.draw();
                    document.getElementById("btnSaveProveedor").value = "Enviar";
                    $('#formProveedorRegister').trigger("reset");
                    $('#modalProveedorRegister').modal('hide');
                });
            } else {
                throw response.json().then(error => {
                    for (var clave in error.errors) {
                        let container = formProveedorRegister.elements.namedItem(clave);
                        container.classList.add('is-invalid');
                        toastr.error(`<li> ${error.errors[clave]} </li>`);
                    }

                    document.getElementById("btnSaveProveedor").value = "Enviar";
                })
            }
        })
        .catch(error => {
            console.log('request failed', error);
        });
}

//Eliminar cliente
function eliminarProveedor(ente_id) {
    toastr.options.preventDuplicates = true;
    toastr.warning("<br /><button class='btn btn-sm btn-danger m-1' type='button' value='yes'>Yes</button> <button class='btn btn-sm btn-dark m-1' type ='button'  value='no' > No </button>", 'Desea eliminar este elemento ?', {
        allowHtml: true,
        onclick: function (toast) {
            value = toast.target.value
            if (value == 'yes') {
                const url = '/proveedors/' + ente_id
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
                                dtProveedors.draw();
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
function editarProveedor(ente_id) {
    const url = '/proveedors/' + ente_id + '/edit'
    const formProveedorUpdate = document.getElementById('formProveedorUpdate');
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
                    formProveedorUpdate.id.value = success.id;
                    formProveedorUpdate.nombre.value = success.nombre;
                    formProveedorUpdate.apellido.value = success.apellido;
                    formProveedorUpdate.email.value = success.email;
                    formProveedorUpdate.tipo_identificacion.value = success.tipo_identificacion;
                    formProveedorUpdate.identificacion.value = success.identificacion;
                    formProveedorUpdate.direccion.value = success.direccion;
                    formProveedorUpdate.ciudad.value = success.ciudad;
                    formProveedorUpdate.departamento.value = success.departamento;
                    formProveedorUpdate.barrio.value = success.barrio;
                    formProveedorUpdate.telefono.value = success.telefono;
                    formProveedorUpdate.opcional_telefono.value = success.opcional_telefono
                    $('#modalProveedorUpdate').modal('show')
                });
            }
        })
        .catch(error => {
            console.log('request failed');
        });
};

//Envio de datos ajax a actualizar
function ajaxFormUpdateProveedor(event) {
    event.preventDefault();

    const dataUpdate = new FormData(formProveedorUpdate);
    document.getElementById("btnUpdateProveedor").value = "Enviando...";

    if (document.querySelector('.is-invalid')) {
        document.querySelector('.is-invalid').classList.remove('is-invalid');
    }

    fetch(formProveedorUpdate.action, {
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
                    dtProveedors.draw();
                    $('#formProveedorUpdate').trigger("reset");
                    $('#modalProveedorUpdate').modal('hide');
                    document.getElementById("btnUpdateProveedor").value = "Enviar";
                });
            } else {
                throw response.json().then(error => {
                    for (var clave in error.errors) {
                        let container = formProveedorUpdate.elements.namedItem(clave);
                        container.classList.add('is-invalid');
                        toastr.error(`<li> ${error.errors[clave]} </li>`);
                    }

                    document.getElementById("btnUpdateProveedor").value = "Enviar";
                })
            }
        })
        .catch(error => {
            console.log('request failed');
        });
}
