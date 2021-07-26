var formContratoRegister = document.getElementById('formContratoRegister');
formContratoRegister.addEventListener('submit', ajaxformContratoRegister);

var formContratoUpdate = document.getElementById('formContratoUpdate');
formContratoUpdate.addEventListener('submit', ajaxFormUpdateContrato);

//datatables settings mantenimientos
dtContrato = $('#dataTableContratos').DataTable({
    processing: true,
    serverSide: true,
    responsive: true,
    scrollCollapse: true,
    stateSave: true,
    paging: true,
    autoWidth: false,


    ajax:  "/contratos/" + token,
    columns: [{
            data: 'DT_RowIndex',
            name: 'DT_RowIndex',
            orderable: false,
            searchable: false,

        },

        {
            data: 'cliente.fullname',
            name: 'cliente.fullname',

        },

        {
            data: 'finicio',
            name: 'finicio',
        },

        {
            data: 'ffin',
            name: 'ffin',

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
function ajaxformContratoRegister(event) {
    event.preventDefault();
    document.getElementById("btnSaveContrato").value = "Enviando...";

    const dataRegister = new FormData(formContratoRegister);

    fetch(formContratoRegister.action, {
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
                    dtContrato.draw();
                    document.getElementById("btnSaveContrato").value = "Enviar";
                    $('#formContratoRegister').trigger("reset");
                    $('#modalContratoRegister').modal('hide');
                });
            } else {
                throw response.json().then(error => {
                    for (var clave in error.errors) {
                        let container = $('#' + $.escapeSelector(clave)).closest('div');
                        container.find('input, select, textarea').addClass('is-invalid');
                        container.addClass('is-invalid-container');
                        container.append('<div class="invalid-feedback">' + error.errors[clave] + '</div>');
                    }

                    document.getElementById("btnSaveContrato").value = "Enviar";
                })
            }
        })
        .catch(error => {
            error.json().then(success => {
                console.log(success);
            });
        });
}

// Traer datos de cliente
function editarContrato(ente_id) {
    const url =  '/contratos/' + ente_id + '/edit'
    const formContratoUpdate = document.getElementById('formContratoUpdate');
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

                    formContratoUpdate.id.value = success.id;
                    formContratoUpdate.finicio.value = success.finicio;
                    formContratoUpdate.ffin.value = success.ffin;
                    formContratoUpdate.cliente_id.value = success.cliente.fullname;

                    // console.log(success.cliente.fullname);
                    $('#modalContratoUpdate').modal('show')
                });
            }
        })
        .catch(error => {
            console.log('request failed');
        });
};


//Envio de datos ajax a actualizar
function ajaxFormUpdateContrato(event) {
    event.preventDefault();

    const dataUpdate = new FormData(formContratoUpdate);
    document.getElementById("btnUpdateContrato").value = "Enviando...";

    fetch(formContratoUpdate.action, {
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
                    dtContrato.draw();
                    $('#formContratoUpdate').trigger("reset");
                    $('#modalContratoUpdate').modal('hide');
                    document.getElementById("btnUpdateContrato").value = "Enviar";
                });
            } else {
                throw response.json().then(error => {
                    for (var clave in error.errors) {
                        let container = $('#' + $.escapeSelector(clave)).closest('div');
                        container.find('input, select, textarea').addClass('is-invalid');
                        container.addClass('is-invalid-container');
                        container.append('<div class="invalid-feedback">' + error.errors[clave] + '</div>');
                    }
                    document.getElementById("btnUpdateContrato").value = "Enviar";


                })
            }
        })
        .catch(error => {
            error.json().then(success => {
                console.log(success);
            });
        });
}

//Eliminar cliente
// function eliminarCliente(ente_id) {
//     toastr.options.preventDuplicates = true;
//     toastr.warning("<br /><button class='btn btn-sm btn-danger m-1' type='button' value='yes'>Yes</button> <button class='btn btn-sm btn-dark m-1' type ='button'  value='no' > No </button>", 'Desea eliminar este elemento ?', {
//         allowHtml: true,
//         onclick: function (toast) {
//             value = toast.target.value
//             if (value == 'yes') {
//                 const url =  '/clientes/' + ente_id
//                 fetch(url, {
//                         method: 'DELETE',
//                         mode: "cors",
//                         headers: {
//                             accept: "application/json",
//                             'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
//                         }
//                     })
//                     .then(response => {
//                         if (response.ok) {
//                             response.text().then(success => {
//                                 dtClientes.draw();
//                                 toastr.remove()
//                                 toastr.info('Success:', success);
//                             });
//                         }
//                     })
//                     .catch(error => {
//                         console.log('request failed');
//                     });
//             } else {
//                 toastr.remove()
//             }
//         }
//     });
// }
