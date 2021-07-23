btnRegisterPassengers = document.getElementById('btnRegisterPassengers');

modalShowDirectory = document.getElementById('modalShowDirectory');

formPassengerRegisterOnService = document.getElementById('formPassengerRegisterOnService');

btnRegisterPassengers.addEventListener('click', ajaxFormRegisterPassengerOnService)

// document.location.origin + '/gestion-vehiculos' + '/gestion-vehiculos'

document.addEventListener('DOMContentLoaded', function () {

    // datatables settings
    dtServicios = $('#dataTablePassengersOnService').DataTable({

        processing: true,
        serverSide: true,
        responsive: true,
        autoWidth: false,
        stateSave: true,

        ajax: "/passengersOnService/" + window.location.pathname.split('/')[3],

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
            data: 'apellido',
            name: 'apellido'
        },
        {
            data: 'identificacion',
            name: 'identificacion'
        },
        {
            data: 'telefono',
            name: 'telefono'
        },
        {
            data: 'direccion',
            name: 'direccion'
        },
        {
            data: 'email',
            name: 'email'
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

function ajaxFormRegisterPassengerOnService(event) {
    event.preventDefault();

    const dataPassengerRegisterOnService = new FormData(formPassengerRegisterOnService);


    fetch('/save-passengers-on-service', {
        method: 'POST',
        body: dataPassengerRegisterOnService,
        mode: "cors",
        headers: {
            accept: "application/json",
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    })
        .then(response => {
            if (response.ok) {
                response.json().then(success => {
                    toastr.info('Success:', 'Pasajero registrado correctamente');
                    dtServicios.draw();
                    $('#modalShowDirectory').modal('hide');
                })
            }
        });
};


// //Envio de datos ajax
// function ajaxFormRegisterConductor(event) {
//     event.preventDefault();
//     document.getElementById("btnSaveConductor").value = "Enviando...";

//     if (document.querySelector('.is-invalid')) {

//         document.querySelector('.is-invalid').classList.remove('is-invalid');

//     }

//     const dataRegister = new FormData(formConductorRegister);

//     fetch(formConductorRegister.action, {
//         method: 'POST',
//         body: dataRegister,
//         mode: "cors",
//         headers: {
//             accept: "application/json",
//             'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
//         }
//     })
//         .then(response => {
//             if (response.ok) {
//                 response.text().then(success => {
//                     toastr.info('Success:', success);
//                     dtServicios.draw();
//                     document.getElementById("btnSaveConductor").value = "Enviar";
//                     $('#formConductorRegister').trigger("reset");
//                     $('#modalConductorRegister').modal('hide');
//                 });
//             } else {
//                 throw response.json().then(error => {
//                     for (var clave in error.errors) {
//                         let container = formConductorRegister.elements.namedItem(clave);
//                         container.classList.add('is-invalid');
//                         toastr.error(`<li> ${error.errors[clave]} </li>`);
//                     }

//                     document.getElementById("btnSaveConductor").value = "Enviar";
//                 })
//             }
//         })
//         .catch(res => {
//             (console.log('request failed', res))
//         });
// }




// //Eliminar cliente
// function eliminarConductor(ente_id) {
//     toastr.options.preventDuplicates = true;
//     toastr.warning("<br /><button class='btn btn-sm btn-danger m-1' type='button' value='yes'>Yes</button> <button class='btn btn-sm btn-dark m-1' type ='button'  value='no' > No </button>", 'Desea eliminar este elemento ?', {
//         allowHtml: true,
//         onclick: function (toast) {
//             value = toast.target.value
//             if (value == 'yes') {
//                 const url = '/solicitudes/' + ente_id
//                 fetch(url, {
//                     method: 'DELETE',
//                     mode: "cors",
//                     headers: {
//                         accept: "application/json",
//                         'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
//                     }
//                 })
//                     .then(response => {
//                         if (response.ok) {
//                             response.text().then(success => {
//                                 dtServicios.draw();
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

// // Traer datos de cliente
// function editarConductor(ente_id) {
//     const url = '/solicitudes/' + ente_id + '/edit'
//     const formConductorUpdate = document.getElementById('formConductorUpdate');
//     fetch(url, {
//         method: 'GET',
//         mode: "cors",
//         headers: {
//             accept: "application/json",
//             'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
//         }
//     })
//         .then(response => {
//             if (response.ok) {
//                 response.json().then(success => {
//                     formConductorUpdate.id.value = success.id;
//                     formConductorUpdate.nombre.value = success.nombre;
//                     formConductorUpdate.apellido.value = success.apellido;
//                     formConductorUpdate.email.value = success.email;
//                     formConductorUpdate.tipo_identificacion.value = success.tipo_identificacion;
//                     formConductorUpdate.identificacion.value = success.identificacion;
//                     formConductorUpdate.direccion.value = success.direccion;
//                     formConductorUpdate.ciudad.value = success.ciudad;
//                     formConductorUpdate.departamento.value = success.departamento;
//                     formConductorUpdate.barrio.value = success.barrio;
//                     formConductorUpdate.telefono.value = success.telefono;
//                     formConductorUpdate.opcional_telefono.value = success.opcional_telefono
//                     $('#modalConductorUpdate').modal('show')
//                 });
//             }
//         })
//         .catch(error => {
//             console.log('request failed');
//         });
// };

// //Envio de datos ajax a actualizar
// function ajaxFormUpdateConductor(event) {
//     event.preventDefault();

//     const dataUpdate = new FormData(formConductorUpdate);
//     document.getElementById("btnUpdateConductor").value = "Enviando...";

//     if (document.querySelector('.is-invalid')) {

//         document.querySelector('.is-invalid').classList.remove('is-invalid');

//     }

//     fetch(formConductorUpdate.action, {
//         method: 'POST',
//         body: dataUpdate,
//         mode: "cors",
//         headers: {
//             accept: "application/json",
//             'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
//         }
//     })
//         .then(response => {
//             if (response.ok) {
//                 response.text().then(success => {
//                     toastr.info('Success:', success);
//                     dtServicios.draw();
//                     $('#formConductorUpdate').trigger("reset");
//                     $('#modalConductorUpdate').modal('hide');
//                     document.getElementById("btnUpdateConductor").value = "Enviar";
//                 });
//             } else {
//                 throw response.json().then(error => {
//                     for (var clave in error.errors) {
//                         let container = formConductorUpdate.elements.namedItem(clave);
//                         container.classList.add('is-invalid');
//                         toastr.error(`<li> ${error.errors[clave]} </li>`);
//                     }

//                     document.getElementById("btnUpdateConductor").value = "Enviar";
//                 })
//             }
//         })
//         .catch(error => {
//             console.log('request failed');
//         });
// }

// function verServicio(ente_id) {
//     const url = '/servicio/detalles/' + ente_id + '';
//     window.location.href = url;
// }
