<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('login');
})->name('index');

Route::post('/login', [AuthController::class, 'login'])->name('login');

Route::group(['middleware' => ['auth']], function(){
    Route::get('/posts', function () {
        return view('posts/index');
    })->name('posts.index');

    Route::get('/create', function () {
        return view('posts/create');
    })->name('posts.create');

    Route::get('/logout', [AuthController::class, 'logout'])->name('logout');
});
