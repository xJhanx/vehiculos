const getProveedores = () => {
    fetch('/apigetproveedors', {
        method: 'GET',
        headers: {
            accept: "application/json",
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    })
        .then(response => {
            if (response.ok) {
                response.json().then(success => {
                    let opciones = '';
                    success.forEach(element => {
                        opciones += `<option value="${element.id}">${element.fullname}</option>`
                    });
                    document.getElementById('proveedor_id').innerHTML = opciones
                });
            } else {
                console.log('Imposible obtener proveedores');
            }
        })
        .catch(error => {
            console.log('request failed', error);
        });

}

