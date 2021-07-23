
var formVehiculoUpdate = document.getElementById('formVehiculoUpdate');
formVehiculoUpdate.addEventListener('submit', ajaxFormUpdateVehiculo);

function muestra_oculta(id) {
    if (document.getElementById) { //se obtiene el id
        var el = document.getElementById(id); //se define la variable "el" igual a nuestro div
        el.style.display = (el.style.display == 'none') ? 'block' : 'none'; //damos un atributo display:none que oculta el div
    }
}

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
