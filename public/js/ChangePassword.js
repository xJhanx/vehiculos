
var email = document.querySelector("#email").value;
var password = document.querySelector("#password").value;
var passwordVeridy = document.querySelector("#password-confirm").value;

console.log(email);
console.log(password);
console.log(passwordVeridy);

const formLogin = document.querySelector("#formchangePassword");
formLogin.onsubmit = function (event) {
    event.preventDefault();
}



function changePassword() {
    toastr.options.preventDuplicates = true;
    toastr.warning("<br /><button class='btn btn-sm btn-danger m-1' type='button' value='yes'>Yes</button> <button class='btn btn-sm btn-dark m-1' type ='button'  value='no' > No </button>", '¿Desea cambiar la contraseña?', {
        allowHtml: true,
        onclick: function (toast) {
            value = toast.target.value
            if (value == 'yes') {
                const bodyData = new FormData(formLogin);
                const url = '/resetPassword';
                fetch(url, {
                    method: 'POST',
                    mode: "cors",
                    body: bodyData,
                    headers: {
                        accept: "application/json",
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                })
                    .then(response => {
                        if (response.ok) {
                            response.json().then(success => {
                                toastr.remove()
                                toastr.info('Success:', success);
                                window.location.replace('/viewPassword');
                            });
                        } else {

                            response.json().then(response => {

                                const errors = response.errors.password
                                let listaErrors = '<ul>';

                                errors.forEach(element => {
                                    listaErrors += `<li> ${element} </li>`
                                });

                                listaErrors += '</ul>'
                                toastr.error(listaErrors);
                            })
                        }

                    })
                    .catch(error => {
                        console.log('request failed');
                    });
            } else {
                toastr.remove()
            }
        }
    });
}