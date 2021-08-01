document.addEventListener('DOMContentLoaded', function () {

    // datatables settings
    dtPassengers = $('#dataTablePassengers').DataTable({
        processing: true,
        serverSide: true,
        responsive: true,
        autoWidth: false,
        stateSave: true,
        ajax:  "/passengers/",

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
                data: 'ciudad',
                name: 'ciudad'
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


// //Envio de datos ajax
// function ajaxFormRegisterPropietario(event) {
//     event.preventDefault();
//     document.getElementById("btnSavePropietario").value = "Enviando...";

//     const dataRegister = new FormData(formPropietarioRegister);

//     if (document.querySelector('.is-invalid')) {

//         document.querySelector('.is-invalid').classList.remove('is-invalid');

//     }

//     fetch(formPropietarioRegister.action, {
//             method: 'POST',
//             body: dataRegister,
//             mode: "cors",
//             headers: {
//                 accept: "application/json",
//                 'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
//             }
//         })
//         .then(response => {
//             if (response.ok) {
//                 response.text().then(success => {
//                     toastr.info('Success:', success);
//                     dtPropietarios.draw();
//                     document.getElementById("btnSavePropietario").value = "Enviar";
//                     $('#formPropietarioRegister').trigger("reset");
//                     $('#modalPropietarioRegister').modal('hide');
//                 });
//             } else {
//                 throw response.json().then(error => {
//                     for (let clave in error.errors) {
//                         let container = formPropietarioRegister.elements.namedItem(clave);
//                         container.classList.add('is-invalid');
//                         toastr.error(`<li> ${error.errors[clave]} </li>`);
//                     }

//                     document.getElementById("btnSavePropietario").value = "Enviar";
//                 })
//             }
//         })
//         .catch(error => {
//             console.log('request failed', error);
//         });
// }


//Crear pasajeros como company
function ajaxFormRegisterPassenger(event) {
    event.preventDefault();

    document.getElementById("btnSavePassenger").value = "Enviar";

    const divPassengers = document.getElementById("checkPassengers");

    const dataRegister = new FormData(formPassengerRegister);

    if (document.querySelector('.is-invalid')) {
        document.querySelector('.is-invalid').classList.remove('is-invalid');
    }

    fetch(formPassengerRegister.action, {
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
                dtPassengers.draw();
                document.getElementById("btnSavePassenger").value = "Enviar";
                $('#modalPassengerRegister').trigger("reset");
                $('#modalPassengerRegister').modal('hide');
            });

        } else {
            throw response.json().then(error => {
                if (error.errors) {
                    for (var clave in error.errors) {
                        let container = formAdminRegister.elements.namedItem(clave);
                        container.classList.add('is-invalid');
                        toastr.error(`<li> ${error.errors[clave]} </li>`);
                    }
                }
                else {
                    toastr.warning('Warning:', error);
                }
                buton = document.getElementById("btnSavePassenger").value = "Enviar";
                /* buton.disabled = true; */
            })
        }
    }).catch(res => {
            // res.text().then(success => {
            //     toastr.danger('Warning:', success);
            // });
            // res.json().then(error => {
            // (console.log('request failed', error))
            //  })

        });
}

//Eliminar Propietario
function eliminarPassenger(ente_id) {
    toastr.options.preventDuplicates = true; 
    toastr.warning("<br /><button class='btn btn-sm btn-danger m-1' type='button' value='yes'>Yes</button> <button class='btn btn-sm btn-dark m-1' type ='button'  value='no' > No </button>", 'Desea eliminar este elemento ?', {
        allowHtml: true,
        onclick: function (toast) {
            value = toast.target.value
            if (value == 'yes') {
                const url =  '/passengers/' + ente_id
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
                                dtPassengers.draw();
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

// Traer datos de Propietario
function editarPassenger(ente_id) {
    const url =  '/passengers/' + ente_id + '/edit'
    const formPropietarioUpdate = document.getElementById('formPassengerUpdate');
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
                    formPropietarioUpdate.id.value = success.id;
                    formPropietarioUpdate.nombre.value = success.nombre;
                    formPropietarioUpdate.apellido.value = success.apellido;
                    formPropietarioUpdate.email.value = success.email;
                    formPropietarioUpdate.tipo_identificacion.value = success.tipo_identificacion;
                    formPropietarioUpdate.identificacion.value = success.identificacion;
                    formPropietarioUpdate.direccion.value = success.direccion;
                    formPropietarioUpdate.ciudad.value = success.ciudad;
                    formPropietarioUpdate.cargo.value = success.cargo;
                    formPropietarioUpdate.barrio.value = success.barrio;
                    formPropietarioUpdate.telefono.value = success.telefono;
                    formPropietarioUpdate.opcional_telefono.value = success.opcional_telefono
                    $('#modalPassengerUpdate').modal('show')
                });
            }
        })
        .catch(error => {
            console.log('request failed');
        });
};

// //Envio de datos ajax a actualizar
function ajaxFormUpdatePassenger(event) {
    event.preventDefault();
    
        const formPropietarioUpdate = document.getElementById('formPassengerUpdate');
        const dataUpdate = new FormData(formPropietarioUpdate);

    if (document.querySelector('.is-invalid')) {

        document.querySelector('.is-invalid').classList.remove('is-invalid');

    }

    document.getElementById("btnUpdatePassenger").value = "Enviando...";

    fetch(formPropietarioUpdate.action, {
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
                    dtPassengers.draw();
                    $('#formPassengerUpdate').trigger("reset");
                    $('#modalPassengerUpdate').modal('hide');
                    document.getElementById("btnUpdatePassenger").value = "Enviar";
                });
            } else {
                throw response.json().then(error => {
                    for (let clave in error.errors) {
                        let container = formPropietarioUpdate.elements.namedItem(clave);
                        container.classList.add('is-invalid');
                        toastr.error(`<li> ${error.errors[clave]} </li>`);
                    }

                    document.getElementById("btnUpdatePassenger").value = "Enviar";
                })
            }
        })
        .catch(error => {
            console.log('request failed', error);
        });
}
