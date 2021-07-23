var formVehiculoUpdate = document.getElementById('formVehiculoUpdate');
formVehiculoUpdate.addEventListener('submit', ajaxFormUpdateVehiculo);

function muestra_oculta(id) {
    if (document.getElementById) { //se obtiene el id
        var el = document.getElementById(id); //se define la variable "el" igual a nuestro div
        el.style.display = (el.style.display == 'none') ? 'block' : 'none'; //damos un atributo display:none que oculta el div
    }
}
// window.onload = function () {
//     /*hace que se cargue la función lo que predetermina que div estará oculto hasta llamar a la función nuevamente*/
//     muestra_oculta('recomendaciones'); /* "contenido_a_mostrar" es el nombre que le dimos al DIV */
// }


//Envio de datos ajax a actualizar
function ajaxFormUpdateVehiculo(event) {
    event.preventDefault();

    const dataUpdate = new FormData(formVehiculoUpdate);
    document.getElementById("btnUpdateVehiculo").value = "Enviando...";

    fetch(formVehiculoUpdate.action, {
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
                    // console.log(success)
                    document.getElementById("btnUpdateVehiculo").value = "Enviar";
                });
            } else {
                throw response.json().then(error => {
                    for (var clave in error.errors) {
                        let container = $('#' + $.escapeSelector(clave)).closest('div');
                        container.find('input, select, textarea').addClass('is-invalid');
                        container.addClass('is-invalid-container');
                        container.append('<div class="invalid-feedback">' + error.errors[clave] + '</div>');
                    }
                    document.getElementById("btnUpdateVehiculo").value = "Enviar";


                })
            }
        })
        .catch(error => {
            console.log('request failed');
        });
}

var formRecomendacionRegister = document.getElementById('formRecomendacionRegister');
formRecomendacionRegister.addEventListener('submit', ajaxformRecomendacionRegister);

var formRecomendacionUpdate = document.getElementById('formRecomendacionUpdate');
formRecomendacionUpdate.addEventListener('submit', ajaxFormUpdateRecomendacion);

//datatables settings mantenimientos 
dtRecomendacion = $('#dataTableRecomendaciones').DataTable({
    processing: true,
    serverSide: true,
    responsive: true,
    scrollCollapse: true,
    paging: true,
    autoWidth: false,


    ajax:  "/recomendaciones/" + document.getElementById('vehiculo_id').value,
    columns: [{
            data: 'DT_RowIndex',
            name: 'DT_RowIndex',
            orderable: false,
            searchable: false,

        }, 
        {
            data: 'autoparte',
            name: 'autoparte',
        },
        
        {
            data: 'short',
            name: 'short',

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
                    dtRecomendacion.draw();
                    document.getElementById("btnSaveRecomendacion").value = "Enviar";
                    $('#formRecomendacionRegister').trigger("reset");
                    $('#modalRecomendacionRegister').modal('hide');
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
    const url =  '/recomendaciones/' + ente_id + '/edit'
    console.log(url);
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
                    formRecomendacionUpdate.autoparte.value = success.autoparte;
                    formRecomendacionUpdate.tipo.value = success.tipo;
                    formRecomendacionUpdate.seguimiento.value = success.seguimiento;
                    formRecomendacionUpdate.fuente.value = success.fuente;
                    formRecomendacionUpdate.especificacion.value = success.especificacion;
                    formRecomendacionUpdate.tipo_alert.value = success.tipo_alert;
                    formRecomendacionUpdate.fecha_siguiente.value = success.fecha_siguiente;
                    formRecomendacionUpdate.km_siguiente.value = success.km_siguiente;


                    // console.log(success);
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

    const dataUpdate = new FormData( formRecomendacionUpdate);
    document.getElementById("btnUpdateRecomendacion").value = "Enviando...";

    fetch( formRecomendacionUpdate.action, {
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
                    dtRecomendacion.draw();
                    $('#formRecomendacionUpdate').trigger("reset");
                    $('#modalRecomendacionUpdate').modal('hide');
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


// var formMantenimientoRegister = document.getElementById('formMantenimientoRegister');
// formMantenimientoRegister.addEventListener('submit', ajaxformMantenimientoRegister);


// //datatables settings mantenimientos 
// dtMantenimiento = $('#dataTableMantenimientos').DataTable({
//     processing: true,
//     serverSide: true,
//     responsive: true,
//     scrollCollapse: true,
//     paging: true,
//     autoWidth: false,


//     ajax:  "/mantenimientos/" + document.getElementById('vehiculo_id').value,
//     columns: [{
//             data: 'DT_RowIndex',
//             name: 'DT_RowIndex',
//             orderable: false,
//             searchable: false,

//         },
//         {
//             data: 'proveedor.fullname',
//             name: 'proveedor.fullname',
//         },
//         {
//             data: 'tipo',
//             name: 'tipo',
//         },
//         {
//             data: 'short',
//             name: 'short',

//         },

//         {
//             data: 'subtotal',
//             name: 'subtotal',
//         },

//     ],
//     order: [
//         [0, 'asc']
//     ]

// });

// //Envio de datos ajax
// function ajaxformMantenimientoRegister(event) {
//     event.preventDefault();
//     document.getElementById("btnSaveMantenimiento").value = "Enviando...";

//     const dataRegister = new FormData(formMantenimientoRegister);

//     fetch(formMantenimientoRegister.action, {
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
//                     document.getElementById("btnSaveMantenimiento").value = "Enviar";
//                     $('#formMantenimientoRegister').trigger("reset");
//                     $('#modalMantenimientoRegister').modal('hide');
//                     dtMantenimiento.draw();
//                 });
//             } else {
//                 throw response.json().then(error => {
//                     for (var clave in error.errors) {
//                         let container = $('#' + $.escapeSelector(clave)).closest('div');
//                         container.find('input, select, textarea').addClass('is-invalid');
//                         container.addClass('is-invalid-container');
//                         container.append('<div class="invalid-feedback">' + error.errors[clave] + '</div>');
//                     }

//                     document.getElementById("btnSaveMantenimiento").value = "Enviar";
//                 })
//             }
//         })
//         .catch(error => {
//             console.log('request failed');
//         });
// }

// Traer datos de cliente
// function editarProveedor(ente_id) {
//     const url =  '/proveedors/' + ente_id + '/edit'
//     console.log(url);
//     const formProveedorUpdate = document.getElementById('formProveedorUpdate');
//     fetch(url, {
//             method: 'GET',
//             mode: "cors",
//             headers: {
//                 accept: "application/json",
//                 'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
//             }
//         })
//         .then(response => {
//             if (response.ok) {
//                 response.json().then(success => {
//                     formProveedorUpdate.id.value = success.id;
//                     formProveedorUpdate.nombre.value = success.nombre;
//                     formProveedorUpdate.apellido.value = success.apellido;
//                     formProveedorUpdate.email.value = success.email;
//                     formProveedorUpdate.tipo_identificacion.value = success.tipo_identificacion;
//                     formProveedorUpdate.identificacion.value = success.identificacion;
//                     formProveedorUpdate.direccion.value = success.direccion;
//                     formProveedorUpdate.ciudad.value = success.ciudad;
//                     formProveedorUpdate.departamento.value = success.departamento;
//                     formProveedorUpdate.barrio.value = success.barrio;
//                     formProveedorUpdate.telefono.value = success.telefono;
//                     formProveedorUpdate.opcional_telefono.value = success.opcional_telefono
//                     $('#modalProveedorUpdate').modal('show')
//                 });
//             }
//         })
//         .catch(error => {
//             console.log('request failed');
//         });
// };
