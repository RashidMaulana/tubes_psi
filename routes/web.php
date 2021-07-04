<?php

use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\MainController;
use App\Http\Middleware\AuthCheck;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Auth::routes();
Route::post('auth/check', [LoginController::class,'check']) ->name('auth.check');
Route::get('/auth/logout',[LoginController::class, 'logout']) ->name('auth.logout');
Route::group(['middleware'=> ['AuthCheck']],function(){
    Route::view('/', 'pages.auth.login');
    Route::get('/dashboard', [LoginController::class,'dashboard']) ->name('dashboard');
    Route::get('/profile', [MainController::class, 'profile']) -> name('profile');
    Route::get('/table', [MainController::class, 'tablekeuntungan']) -> name('table');
});