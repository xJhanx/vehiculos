<ul class=" navbar-nav sidebar sidebar accordion" id="accordionSidebar">
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="{{route('home')}}">
        <div class="sidebar-brand-icon">

        </div>
        <div class="sidebar-brand-text text-dark mx-3">Sistema gestión de vehiculos</div>
    </a>
    <hr class="sidebar-divider my-0">

    <li class="nav-item">
        <a class="nav-link collapsed text text-dark" href="#" data-toggle="collapse" data-target="#collapseBootstrap"
            aria-expanded="true" aria-controls="collapseBootstrap">
            <i class="fa fa-cogs"></i>
            <span>Menú</span>
        </a>
        <div id="collapseBootstrap" class="collapse" aria-labelledby="headingBootstrap" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                
                @can('isSuperGerente')
                <a class="collapse-item" href="{{route('admins.index')}}">Administradores</a>
                @endcan
                
                @can('isManagmentDrivers')
                <a class="collapse-item" href="{{route('conductores.index')}}">Conductores</a>
                @endcan
                
                 @can('isClienteCompany')
                 <a class="collapse-item" href="{{route('designados.index')}}">Designados</a>
                @endcan
                
                @can('isManagmentPassengers')
                <a class="collapse-item" href="{{route('passengers.index')}}">Pasajeros</a>
                @endcan
                
                @can('isManagmentClientesCompany')
                <a class="collapse-item" href="{{route('clientescompany.index')}}">Compañias cliente</a>
                @endcan
                
                @can('isManagmentServices')
                <a class="collapse-item" href="{{route('servicios.index')}}">Servicios</a>
                <a class="collapse-item" href="{{route('solicitudes.index')}}">Solicitudes</a>
                @endcan
                
                
            </div>
        </div>
    </li>

    @can('isGerente')
    <li class="nav-item mt-2"> <a class="nav-link text text-dark" href="{{route('propietarios.index')}}"><i
                class="fa fa-users"></i> <small>Propietarios</small></a> </li>
    <li class="nav-item "> <a class="nav-link text text-dark" href="{{route('clientes.index')}}"><i
                class="fa fa-users"></i> <small>Clientes</small></a> </li>
    <li class="nav-item "> <a class="nav-link text text-dark" href="{{route('proveedors.index')}}"><i
                class="fa fa-users"></i> <small>Proveedores</small></a> </li>
    @endcan

    <hr class="sidebar-divider">
    <div class="sidebar-heading">
        Vehiculos
    </div>

    @can('isManagmentVehiculos')
    <li class="nav-item "> <a class="nav-link text text-dark" href='{{route('vehiculos.index')}}'><i
                class="fa fa-users"></i> <small>Todos</small></a> </li>
    @endcan
                
    @can('isGerente')
    <li class="nav-item "> <a class="nav-link text text-dark" href='{{route('aggkm')}}'><i class="fa fa-users"></i>
            <small> Actualizar Km</small></a> </li>

    <li class="nav-item">
        <a class="nav-link collapsed text text-dark" href="#" data-toggle="collapse" data-target="#collapseMtos"
            aria-expanded="true" aria-controls="collapseMtos">
            <i class="fa fa-cogs"></i>
            <span>Gestión Mantenimientos</span>
        </a>
        <div id="collapseMtos" class="collapse" aria-labelledby="headingBootstrap" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <a class="collapse-item" href="{{route('notifysfecha.index')}}">Vencimientos por fecha</a>
                <a class="collapse-item" href="{{route('notifyskm.index')}}">Vencimientos por km</a>
                <a class="collapse-item" href="{{route('documentos.index')}}">Documentación</a>
                <a class="collapse-item" href="{{route('recomendaciones.index')}}">Recomendaciones</a>
                <a class="collapse-item" href="{{route('ejecutados.alls')}}">Mtos realizados</a>
                <a class="collapse-item" href="{{route('partes.index')}}">Auto partes</a>
                <a class="collapse-item" href="{{route('kits.index')}}">Kits de vehiculos</a>
            </div>
        </div>
    </li>
    @endcan

    @can('isGerente')
    <hr class="sidebar-divider">
    <div class="sidebar-heading">
        Reportes
    </div>

    <li class="nav-item">
        <a class="nav-link collapsed text text-dark" href="#" data-toggle="collapse" data-target="#collapseBootstrapReportes"
            aria-expanded="true" aria-controls="collapseBootstrapReportes">
            <i class="fa fa-cogs"></i>
            <span>Gestión Resportes</span>
        </a>
        <div id="collapseBootstrapReportes" class="collapse" aria-labelledby="headingBootstrap" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <a class="collapse-item" href="{{route('vista.mes')}}">Descargar reportes Mes</a>
                <a class="collapse-item" href="{{route('vista.anual')}}">Descargar reportes Año</a>
                <a class="collapse-item" href="{{route('vista.plan.anual')}}">Plan Mantenimientos</a>
                <a class="collapse-item" href="{{route('autopartes.index')}}">Piezas vehiculares</a>
                <a class="collapse-item" href="{{route('relacions.index')}}">Relacion</a>
                <a class="collapse-item" href="{{route('historialkm')}}">Historial de km</a>
            </div>
        </div>
    </li>
    @endcan




    <hr class="sidebar-divider">
    <div class="version" id="version-ruangadmin"></div>


</ul>