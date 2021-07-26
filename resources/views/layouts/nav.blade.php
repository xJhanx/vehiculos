<nav class="navbar navbar-expand navbar-dark  topbar mb-4 static-top">
    <button id="sidebarToggleTop" class="btn btn-link rounded-circle mr-3">
        <i class="text-primary fa fa-bars"></i>
    </button>
    <ul class="navbar-nav ml-auto ">
        <li class="nav-item dropdown no-arrow">
            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown"
                aria-haspopup="true" aria-expanded="false">
                <i class="text-primary fas fa-search fa-fw"></i>
            </a>
            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                aria-labelledby="searchDropdown">
                <form class="navbar-search" method="GET" action="{{ route('vehiculo.buscar') }}">
                    <div class="input-group">
                        <input type="text" class="form-control bg-light border-1 small" name="query"
                            placeholder="Placa del vehiculo " aria-label="Search" aria-describedby="basic-addon2"
                            style="border-color: #3f51b5;">
                        <div class="input-group-append">
                            <button class="btn btn-primary btnSearh" type="submit">
                                <i class=" fa fa-search"></i>
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </li>

        @can('isGerente')
            <li class="nav-item dropdown no-arrow">
                <a class="nav-link dropdown-toggle" title=" Documentacion de vehiculos"
                    href="{{ route('documentos.todos') }}" aria-haspopup="true" aria-expanded="false">
                    <i class="text-danger fas fa-download fa-fw"></i>
                </a>
            </li>
        @endcan

        @can('isGerente')
            <li class="nav-item dropdown no-arrow mx-1">
                <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown"
                    aria-haspopup="true" aria-expanded="false">
                    <i class="text-primary fas fa-bell fa-fw"></i>
                    <span class="badge badge-danger badge-counter">+</span>
                </a>

                <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                    aria-labelledby="alertsDropdown">
                    <h6 class="dropdown-header">
                        Alerts Center
                    </h6>

                    <a class="dropdown-item d-flex align-items-center" href="{{ route('notifyskm.index') }}">
                        <div class="notification d-flex flex-row align-items-center">
                            <i class="fa fa-exclamation-triangle text-danger" style="font-size:2.5em"></i>
                            <div class="align-self-center">
                                <div class="bg-danger">
                                    <span></span>
                                </div>
                            </div>

                            <div>
                                <div class="small text-dark-500">{{ Carbon\Carbon::now() }}</div>
                                <span class="font-weight-bold">Vencimientos por kilometro</span>
                                <small id="notificarkm" class="text text-danger font-weight-bold" style="font-size:1.1em">

                                </small>
                            </div>
                        </div>
                    </a>


                    <a class="dropdown-item d-flex align-items-center" href="{{ url('notifysdias') }}">
                        <div class="notification d-flex flex-row align-items-center">
                            <i class="fa fa-exclamation-triangle text-dark" style="font-size:2.5em"></i>
                            <div class="align-self-center">
                                <div class="bg-danger">
                                    <span></span>
                                </div>
                            </div>

                            <div>
                                <div class="small text-dark-500">{{ Carbon\Carbon::now() }}</div>
                                <span class="font-weight-bold">Vencimientos por Dias</span>
                                <small id="notificardias" class="text text-danger font-weight-bold" style="font-size:1.1em">
                                </small>
                            </div>
                        </div>
                    </a>

                    <a class="dropdown-item d-flex align-items-center" href="{{ route('notifysfecha.index') }}">
                        <div class="notification d-flex flex-row align-items-center">
                            <i class="fa fa-exclamation-triangle text-warning" style="font-size:2.5em"></i>
                            <div class="align-self-center">
                                <div class="bg-danger">
                                    <span></span>
                                </div>
                            </div>

                            <div>
                                <div class="small text-dark-500">{{ Carbon\Carbon::now() }}</div>
                                <span class="font-weight-bold">Vencimientos por Fecha</span>
                                <small id="notificarfc" class="text text-danger font-weight-bold" style="font-size:1.1em">
                                </small>
                            </div>
                        </div>
                    </a>

                    <a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
                </div>
            </li>
            <li class="nav-item dropdown no-arrow mx-1">
                {{-- <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown"
                aria-haspopup="true" aria-expanded="false">
                <i class="text-primary fas fa-envelope fa-fw"></i>
                <span class="badge badge-warning badge-counter">2+</span>
            </a> --}}
                {{-- <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                aria-labelledby="messagesDropdown">
                <h6 class="dropdown-header">
                    Message Center
                </h6>
                <a class="dropdown-item d-flex align-items-center" href="#">
                    <div class="dropdown-list-image mr-3">
                        <img class="rounded-circle" src="img/man.png" style="max-width: 60px" alt="">
                        <div class="status-indicator bg-success"></div>
                    </div>
                    <div class="font-weight-bold">
                        <div class="text-truncate">Hi there! I am wondering if you can help me with a
                            problem I've been
                            having.</div>
                        <div class="small text-gray-500">Udin Cilok · 58m</div>
                    </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                    <div class="dropdown-list-image mr-3">
                        <img class="rounded-circle" src="img/girl.png" style="max-width: 60px" alt="">
                        <div class="status-indicator bg-default"></div>
                    </div>
                    <div>
                        <div class="text-truncate">Am I a good boy? The reason I ask is because someone
                            told me that people
                            say this to all dogs, even if they aren't good...</div>
                        <div class="small text-gray-500">Jaenab · 2w</div>
                    </div>
                </a>
                <a class="dropdown-item text-center small text-gray-500" href="#">Read More Messages</a>
            </div> --}}
            </li>
            <li class="nav-item dropdown no-arrow mx-1">
                {{-- <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown"
                aria-haspopup="true" aria-expanded="false">
                <i class="text-primary fas fa-tasks fa-fw"></i>
                <span class="badge badge-success badge-counter">3+</span>
            </a> --}}
                {{-- <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                aria-labelledby="messagesDropdown">
                <h6 class="dropdown-header">
                    Task
                </h6>
                <a class="dropdown-item align-items-center" href="#">
                    <div class="mb-3">
                        <div class="small text-gray-500">Design Button
                            <div class="small float-right"><b>50%</b></div>
                        </div>
                        <div class="progress" style="height: 12px;">
                            <div class="progress-bar bg-success" role="progressbar" style="width: 50%"
                                aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                    </div>
                </a>
                <a class="dropdown-item align-items-center" href="#">
                    <div class="mb-3">
                        <div class="small text-gray-500">Make Beautiful Transitions
                            <div class="small float-right"><b>30%</b></div>
                        </div>
                        <div class="progress" style="height: 12px;">
                            <div class="progress-bar bg-warning" role="progressbar" style="width: 30%"
                                aria-valuenow="30" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                    </div>
                </a>
                <a class="dropdown-item align-items-center" href="#">
                    <div class="mb-3">
                        <div class="small text-gray-500">Create Pie Chart
                            <div class="small float-right"><b>75%</b></div>
                        </div>
                        <div class="progress" style="height: 12px;">
                            <div class="progress-bar bg-danger" role="progressbar" style="width: 75%"
                                aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                    </div>
                </a>
                <a class="dropdown-item text-center small text-gray-500" href="#">View All Taks</a>
            </div> --}}
            </li>
        @endcan
        <div class="topbar-divider d-none d-sm-block"></div>
        <li class="nav-item dropdown no-arrow">
            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown"
                aria-haspopup="true" aria-expanded="false">
                {{-- <img class="img-profile rounded" src="{{asset('img/silpos.png')}}" style=""> --}}
                <span class="ml-2 d-none d-lg-inline text-primary small">{{ Auth::user()->name }}</span>
            </a>
            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                {{-- <a class="dropdown-item" href="#">
                    <i class="text-primary fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                    Profile
                </a>
                <a class="dropdown-item" href="#">
                    <i class="text-primary fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                    Settings
                </a>
                <a class="dropdown-item" href="#">
                    <i class="text-primary fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                    Activity Log
                </a> --}}


                <div class="dropdown-item">
                    <style>
                        #formCgPass {
                            display: flex;
                            align-items: center;
                        }

                    </style>

                    <a class="dropdown-item" href="{{ route('resetPassword') }}">
                        <i class="text-primary fas fa-key fa-sm fa-fw mr-2 text-gray-400"></i>
                        Cambiar contraseña
                    </a>


{{--                     <a href="{{ route('resetPassword') }}">Cambiar contraseña</a>
 --}}
                </div>

                {{-- <div class="dropdown-divider"></div> --}}

                <form action="{{ route('logout') }}" method="post">
                    @csrf
                    {{-- <i class="text-primary fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i> --}}
                    <input type="submit" class="dropdown-item" value="Logout">
                </form>
            </div>



        </li>
    </ul>
</nav>
