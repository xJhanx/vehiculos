window.onload = function () {
    init();

};

function init() {
    const url =  '/vehiculos/getTotal/' + token
    fetch(url, {
            method: 'GET',
            mode: "cors",
            headers: {
                accept: "application/json",
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            // cache: 'force-cache'
        })
        .then(response => {
            if (response.ok) {
                response.text().then(success => {
                    this.document.getElementById('totalGastos').innerHTML = success;
                });
            } else {
                throw response.json().then(error => {
                    console.log(error);
                })
            }
        })
        .catch(error => {
            error.json().then(success => {
                console.log(success);
            });
        });
};
