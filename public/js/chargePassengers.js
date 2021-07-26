const divPassengers = document.getElementById("checkPassengers");

fetch('/passengers', {
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
                
                console.log('entrando');

                let html = '';

                let data = success.passengers;

                data.forEach((passenger) => {

                    html += `<div class="custom-control custom-checkbox">
                                <input type="checkbox" onchange="saveCheck(${passenger.id})" value="${passenger.id}" class="custom-control-input" ${(passenger.check == true) ? 'checked' : ''} name="passengers[]"
                                id="defaultUnchecked${passenger.id}">
                                <label class="custom-control-label" for="defaultUnchecked${passenger.id}">${passenger.nombre}
                                ${passenger.apellido}</label>
                                </div>`
                })

                divPassengers.innerHTML = html;
                document.getElementById("btnSavePassenger").value = "Enviar";
                $('#formPassengerRegister').trigger("reset");
                $('#modalPassengerRegister').modal('hide');

            });
        }
    });
