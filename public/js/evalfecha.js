
function filtrar() {
    inicio = document.getElementById('min').value;
    fin = document.getElementById('max').value;

    if (inicio.length == 0 || fin.length == 0) {
        toastr.error('Error', 'Complete los campos')
        dataTableServices.ajax.url( '/services').load();

    } else {
        console.time('Measuring time');
        dataTableServices.ajax.url( '/services/filter/' + inicio + '/' + fin).load();
        console.timeEnd('Measuring time');
    }
}


(function informe() {
    // $.fn.dataTable.ext.errMode = 'none';
    dataTableServicesInforme = $('#dataTableServicesInforme').DataTable({
        processing: true,
        stateSave: true,
        responsive: true,
        autoWidth: false,
        destroy: true,
    });
})()
