<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\Api\PostController;
use App\Http\Controllers\Api\CategoryController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});


Route::prefix('posts')->group(function () {
    Route::get('/', [PostController::class, 'index'])->name('post.index');
    Route::post('/store', [PostController::class, 'store'])->name('post.store');
});

Route::prefix('categories')->group(function () {
    Route::get('/', [CategoryController::class, 'index'])->name('category.index');
});
