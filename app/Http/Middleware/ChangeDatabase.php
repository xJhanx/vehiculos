<?php

namespace App\Http\Middleware;

use Illuminate\Support\Facades\Config;

use Closure;
use Illuminate\Support\Facades\Auth;

class ChangeDatabase
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        Config::set('database.connections.company.database', Auth::user()->company);
        return $next($request);
    }
}
