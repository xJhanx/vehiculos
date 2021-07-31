<?php

namespace App\Providers;

use App\Admin;
use App\Conductor;
use App\DesignadoByCompany;
use App\Policies\adminPolicy;
use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Gate;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * The policy mappings for the application.
     *
     * @var array
     */
    protected $policies = [
        // 'App\Model' => 'App\Policies\ModelPolicy',
    ];

    /**
     * Register any authentication / authorization services.
     *
     * @return void
     */
    public function boot()
    {
        $this->registerPolicies();

        Gate::define('infoVehiculo', function ($user) {
            return  $user->role == 'conductor' ||  $user->role == 'cliente' ;

        });
        Gate::define('allDesignados', function ($user) {
            return  $user->role == 'superGerente' ||  $user->role == 'administrador' ;

        });
        Gate::define('verDesignados', function ($user) {
            return    $user->role == 'cliente';

        });
        Gate::define('vehiculoService', function ($user) {
            return  $user->role == 'superGerente' || $user->role == 'gerente' || $user->role == 'administrador' ;

        });
        Gate::define('isAdmin', function ($user) {
            return $user->role == 'administrador';
        });

        Gate::define('isDriver', function ($user) {
            return $user->role == 'conductor';
        });

        Gate::define('isGerente', function ($user) {
            return $user->role == 'gerente';
        });
        
        Gate::define('isClienteCompany', function ($user) {
            return $user->role == 'cliente' ;
        });
        
        Gate::define('isViewService', function ($user) {
            return $user->role == 'cliente'  || $user->role == 'designado' || $user->role == 'conductor';
        });
        
        Gate::define('isManagmentDrivers', function ($user) {
            return  $user->role == 'superGerente' || $user->role == 'gerente' || $user->role == 'administrador';
        });
        
        Gate::define('isManagmentServices', function ($user) {
            return  $user->role == 'superGerente' || $user->role == 'gerente' || $user->role == 'cliente' || $user->role == 'administrador' || $user->role == 'designado' || $user->role == 'conductor' ;
        });
        
        Gate::define('isManagmentMantenimientos', function ($user) {
            return  $user->role == 'superGerente' || $user->role == 'gerente' || $user->role == 'administrador' || $user->role == 'cliente' || $user->role == 'conductor' ;
        });
        
        Gate::define('isManagmentVehiculos', function ($user) {
            return  $user->role == 'superGerente' || $user->role == 'gerente' || $user->role == 'administrador' /* || $user->role == 'cliente' */ ;
        });
        
        
        Gate::define('isManagmentClientesCompany', function ($user) {
            return  $user->role == 'superGerente' || $user->role == 'administrador';
        });
        
        Gate::define('isManagmentPassengers', function ($user) {
            return  $user->role == 'designado' || $user->role == 'cliente' ;
        });
        
        Gate::define('isSuperGerente', function ($user) {
            return $user->role == 'superGerente';
        });
        
        Gate::define('isDesignado', function ($user) {
            return $user->role == 'designado';
        });
        
        Gate::define('isConductor', function ($user) {
            return $user->role == 'conductor';
        });

        
        Gate::define('isMe', function ($user, $id) {
            switch ($user->role) {
                case 'conductor':
                    $conductor = Conductor::findOrFail($user->funcionario_id);
                    return $conductor->id == $id;
                    break;
                case 'designado':
                    $designado = DesignadoByCompany::findOrFail($user->funcionario_id);
                    return $designado->id == $id;
                    break;
                case 'administrador':
                    $administrador = Admin::findOrFail($user->funcionario_id);
                    return $administrador->id == $id;
                    break;
                case 'superGerente':
                    // $superGerente = Admin::findOrFail($user->funcionario_id);
                    // return $superGerente->id == $id;
                    break;
                default:
                    return false;
                    break;
            }
        });
    }
}
