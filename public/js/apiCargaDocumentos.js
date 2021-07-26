
var formDocumentoRegister = document.getElementById('formDocumentoRegister');
formDocumentoRegister.addEventListener('submit', ajaxFormRegisterDocumento);

//Envio de datos ajax
function ajaxFormRegisterDocumento(event) {
    event.preventDefault();
    document.getElementById("btnSaveDocumento").value = "Enviando...";

    const dataRegister = new FormData(formDocumentoRegister);

    fetch(formDocumentoRegister.action, {
        method: 'POST',
        body: dataRegister,
        mode: "cors",
        headers: {
            accept: "application/json",
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        cache: 'force-cache'
    })
        .then(response => {
            if (response.ok) {
                response.text().then(success => {
                    toastr.info('Success:', success);
                    // dtDocumento.draw();
                    document.getElementById("btnSaveDocumento").value = "Enviar";
                    $('#formDocumentoRegister').trigger("reset");
                    $('#modalDocumentacionRegister').modal('hide');
                    document.location.reload(true)
                });
            } else {


                throw response.json().then(error => {
                    for (var clave in error.errors) {
                        let container = $('#' + $.escapeSelector(clave)).closest('div');
                        container.find('input, select, textarea').addClass('is-invalid');
                        container.addClass('is-invalid-container');
                        container.append('<div class="invalid-feedback">' + error.errors[clave] + '</div>');
                    }

                    document.getElementById("btnSaveDocumento").value = "Enviar";
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
function eliminarDocumento(ente_id) {
    toastr.options.preventDuplicates = true;
    toastr.warning("<br /><button class='btn btn-sm btn-danger m-1' type='button' value='yes'>Yes</button> <button class='btn btn-sm btn-dark m-1' type ='button'  value='no' > No </button>", 'Desea eliminar este elemento ?', {
        allowHtml: true,
        onclick: function (toast) {
            value = toast.target.value
            if (value == 'yes') {
                const url = '/documentos/' + ente_id
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
                                toastr.remove()
                                toastr.info('Success:', success);
                                location.reload()
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
function editarDocumento(ente_id) {
    var url = '/Documentos/' + ente_id + '/edit'
    window.location.href = url;
};
