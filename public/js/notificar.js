const URL = window.location.origin;

function notificarkm() {
    fetch(URL + '/notificar/km', {
        method: 'GET',
        mode: 'cors',
        headers: {
            accept: "application/json",
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    }).then(res => {
        res.text().then(km => {
            console.log('km',km);
            const notificarkm = document.querySelector('#notificarkm');
            notificarkm.innerHTML = km;

        })
    })
}

function notificarfc() {
    fetch(URL + '/notificar/fc', {
        method: 'GET',
        mode: 'cors',
        headers: {
            accept: "application/json",
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    }).then(res => {
        res.text().then(fc => {
            console.log("Fecha fc  ",fc);
            const notificarfc = document.querySelector('#notificarfc');
            notificarfc.innerHTML = fc;

        })
    })

}

function notificardias() {
    fetch(URL + '/notificar/dias', {
        method: 'GET',
        mode: 'cors',
        headers: {
            accept: "application/json",
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    }).then(res => {
        res.text().then(dias => {
            console.log('Dias dis', dias);
            const notificardias = document.querySelector('#notificardias');
            notificardias.innerHTML = dias;

        })
    })

}

notificarfc();
notificardias();
notificarkm();
