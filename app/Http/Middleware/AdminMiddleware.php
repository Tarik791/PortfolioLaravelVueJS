<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class AdminMiddleware
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
        $allowedIpAddress = '127.0.0.1';

        if ($request->ip() == $allowedIpAddress) {
            return $next($request);
        }

        return redirect('/')->with('error', 'Access denied.');
    }
}