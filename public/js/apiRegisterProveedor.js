
var formProveedorRegister = document.getElementById('formProveedorRegister');
formProveedorRegister.addEventListener('submit', ajaxFormRegisterProveedor);

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
                    document.getElementById("btnSaveProveedor").value = "Enviar";
                    getProveedores()
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

