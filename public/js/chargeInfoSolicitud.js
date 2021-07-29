const url = '/servicios/' + window.location.pathname.split('/')[3] + '/edit';
/* const id = url.split('/')[2]; */
const formServicioUpdate = document.getElementById('formServiceUpdate');

//console.log(formServicioUpdate);

// const span = document.getElementById('test');
// window.onload = function () {

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
/*                 formServicioUpdate.point_start.value = success.punto_inicio
 */                formServicioUpdate.vehiculo_id.value = success.vehiculo_id
                if (typeof formServicioUpdate.observaciones_conductor != 'undefined') {
                    formServicioUpdate.observaciones_conductor.value = success.observaciones_conductor
                }
/*                 console.log(success); */

            });
        }
    })
    .catch(error => {
        console.log('request failed');
    });
// }
// };


// fech de el select vehiculo
const select = document.querySelector("#conductor_id");

select.addEventListener("change", function () {
    const id = document.querySelector("#conductor_id").value;
    const urlSelect = "http://vehiculos-main.test/detalleSelect/" + id;
    const $select = document.querySelector("#vehiculo_id");
    $select.value = 0;
    let html = '';
    $select.innerHTML = html;

    if (id != 'Seleccione') {
        
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
                    
                        for (let i = 0; i < success.length; i++) {
                            html += `<option value=${success[i].vehiculo_id}>${success[i].placa}</option>`
                        }
                        $select.innerHTML = html;
                    });
                }
            })
            .catch(error => {
                console.log('request failed');
            });

    }else{
        html += `<option value=0>Seleccione</option>`
    }

    $select.innerHTML = html;

});

function verVehiculo(){
    const id = document.querySelector("#vehiculo_id").value;
    const url = "/vehiculoService/"+id;
    window.location.href = url;
} 
console.log("asdasdsad");

function validEnvio(){
    button = document.querySelector("#btnSavePassenger");
    button = disabled = "true";
}
