//Envio de datos ajax
function ajaxFormRegisterPassenger(event) {
    event.preventDefault();

    document.getElementById("btnSavePassenger").value = "Enviando...";

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
                response.json().then(success => {

                    let html = '';

                    let data = success.passengers;

                    data.forEach((passenger) => {

                        let passengerIndex = passengersSelected.indexOf(passenger.id);

                        if (passengerIndex > -1) {
                            passenger.check = true;
                        }

                        html += `<div class="custom-control custom-checkbox">
                                <input type="checkbox" onchange="saveCheck(${passenger.id})" value="${passenger.id}" class="custom-control-input" ${(passenger.check == true) ? 'checked' : ''} name="passengers[]"
                                id="defaultUnchecked${passenger.id}">
                                <label class="custom-control-label" for="defaultUnchecked${passenger.id}">${passenger.nombre} ${passenger.apellido}</label>
                                </div>`
                    })

                    divPassengers.innerHTML = html;

                    document.getElementById("btnSavePassenger").value = "Enviar";
                    $('#formPassengerRegister').trigger("reset");
                    $('#modalPassengerRegister').modal('hide');
                });
            } else {
                throw response.json().then(error => {
                    for (let clave in error.errors) {
                        let container = formPassengerRegister.elements.namedItem(clave);
                        container.classList.add('is-invalid');
                        toastr.error(`<li> ${error.errors[clave]} </li>`);
                    }

                    document.getElementById("btnSavePassenger").value = "Enviar";
                })
            }
        })
        .catch(error => {
            console.log('request failed', error);
        });
}
