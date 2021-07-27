const url = '/servicios/' + window.location.pathname.split('/')[3] + '/edit'
const formServicioUpdate = document.getElementById('formServiceUpdate');

console.log(formServicioUpdate);

const span = document.getElementById('test');
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

            });
        }
    })
    .catch(error => {
        console.log('request failed');
    });
// };

console.log("assdasd");
