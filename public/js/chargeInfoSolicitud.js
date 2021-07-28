const url = '/servicios/' + window.location.pathname.split('/')[3] + '/edit';
/* const id = url.split('/')[2]; */
const formServicioUpdate = document.getElementById('formServiceUpdate');

//console.log(formServicioUpdate);

// const span = document.getElementById('test');

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
                // formServicioUpdate.approved_date.value = success.approved
                formServicioUpdate.conductor_id.value = success.conductor_id
                formServicioUpdate.costo.value = success.costo
                // formServicioUpdate.created_at.value = success.created
                // formServicioUpdate.created_date.value = success.created
                formServicioUpdate.date.value = success.date
                // formServicioUpdate.empresa_id.value = success.empresa
                formServicioUpdate.estado.value = success.estado
                formServicioUpdate.hour.value = success.hour
                formServicioUpdate.id.value = success.id
                formServicioUpdate.observaciones.value = success.observaciones
                formServicioUpdate.point_end.value = success.punto_fin
                formServicioUpdate.point_start.value = success.punto_inicio
                formServicioUpdate.vehiculo_id.value = success.vehiculo_id
                if (typeof formServicioUpdate.observaciones_conductor != 'undefined') {
                    formServicioUpdate.observaciones_conductor.value = success.observaciones_conductor
                }
                /*      console.log(success);  */

            });
        }
    })
    .catch(error => {
        console.log('request failed');
    });
// };


//fech de el select vehiculo
const select = document.querySelector("#conductor_id");

select.addEventListener("change", function () {
    const id = document.querySelector("#conductor_id").value;
    const urlSelect = "http://vehiculos-main.test/detalleSelect/" + id;

    fetch(urlSelect, {
        method: 'GET',
        mode: "cors",
        headers: {
            accept: "application/json"
        }
    })
        .then(response => {
            if (response.ok) {
                response.json().then(success => {
                    console.log(success);
                    const array = success;
                    const $select = document.querySelector("#vehiculo_id");
                    for(let i = success.length+1; i >= 0; i--) {
                        $select.remove(i);
                    }
                    for(let i = 0; i < success.length; i++) {
                        const option = document.createElement('option');
                        option.value = success[i].vehiculo_id;
                        option.text = success[i].placa;
                        $select.appendChild(option);
                    }
                });
            }
        })
        .catch(error => {
            console.log('request failed');
        });

});
