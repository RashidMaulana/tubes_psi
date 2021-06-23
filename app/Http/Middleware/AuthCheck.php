<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class AuthCheck
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        if(!session()->has('LoggedUser')&&($request->path() !='/')){
            return redirect('/')->with('fail','Anda harus login terlebih dahulu!');
        }

        if(session()->has('LoggedUser')&&($request->path()) == '/') {
            return redirect('dashboard');
        }
        return $next($request);

    }
}

