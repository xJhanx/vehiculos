document.addEventListener('DOMContentLoaded', function () {

    // datatables settings vehiculos
    dtVehiculo = $('#dataTableVehiculos').DataTable({
        processing: true,
        serverSide: true,
        responsive: true,
        autoWidth: false,
        stateSave: true,
        ajax:  "/vehiculos/",

        columns: [{
                data: 'DT_RowIndex',
                name: 'DT_RowIndex',
                orderable: false,
                searchable: false
            },
            {
                data: 'propietario.fullname',
                name: 'propietario.fullname'
            },
            {
                data: 'placa',
                name: 'placa'
            },
            {
                data: 'tipo_vehiculo',
                name: 'tipo_vehiculo'
            },
            {
                data: 'km_actual',
                name: 'km_actual'
            },
            {
                data: 'marca',
                name: 'marca'
            },
            {
                data: 'modelo',
                name: 'modelo'
            },
            {
                data: 'color',
                name: 'color'
            },
            {
                data: 'estado',
                name: 'estado'
            },
            {
                data: 'action',
                name: 'action',
                orderable: false
            },
        ],
        order: [
            [0, 'desc']
        ]

    });

});

//Envio de datos ajax
function ajaxFormRegisterVehiculo(event) {
    event.preventDefault();
    document.getElementById("btnSaveVehiculo").value = "Enviando...";
    if (document.querySelector('.is-invalid')) {
        document.querySelector('.is-invalid').classList.remove('is-invalid');
    }

    const dataRegister = new FormData(formVehiculoRegister);

    fetch(formVehiculoRegister.action, {
            method: 'POST',
            body: dataRegister,
            mode: "cors",
            headers: {
                accept: "application/json",
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        })
        .then(response => {
            switch (response.status) {
                case 200:
                    response.json().then(success => {
                        toastr.info('Success:', success);
                        dtVehiculo.draw();
                        document.getElementById("btnSaveVehiculo").value = "Enviar";
                        $('#formVehiculoRegister').trigger("reset");
                        $('#modalVehiculoRegister').modal('hide');
                    });
                    document.getElementById("btnSaveVehiculo").value = "Enviar";
                    break;

                case 422:
                    throw response.json().then(error => {
                        for (var clave in error.errors) {
                            let container = formVehiculoRegister.elements.namedItem(clave);
                            container.classList.add('is-invalid');
                            toastr.error(`<li> ${error.errors[clave]} </li>`);
                        }
                        document.getElementById("btnSaveVehiculo").value = "Enviar";
                        return new Error(error); // (*)
                    });
                    break;
                case 500:
                    document.getElementById("btnSaveVehiculo").value = "Enviar";
                    throw response.json().then(error => {
                        return new Error(error); // (*)
                    })
                    break;
                default:
                    return new Error(error); // (*)
                    break;
            }
        })
        .catch(error => {
            console.log(error);
        });
}

//Eliminar cliente
function eliminarVehiculo(ente_id) {
    toastr.options.preventDuplicates = true;
    toastr.warning("<br /><button class='btn btn-sm btn-danger m-1' type='button' value='yes'>Yes</button> <button class='btn btn-sm btn-dark m-1' type ='button'  value='no' > No </button>", 'Desea eliminar este elemento ?', {
        allowHtml: true,
        onclick: function (toast) {
            value = toast.target.value
            if (value == 'yes') {
                const url =  '/vehiculos/' + ente_id
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
                                dtVehiculo.draw();
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
function editarVehiculo(ente_id) {
    var url =  '/vehiculos/' + ente_id + '/edit'
    window.location.href = url;
};
console.log("hi");
