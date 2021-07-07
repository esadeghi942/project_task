<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\v1\AuthController;
use App\Http\Controllers\Api\v1\ProjectController;
use App\Http\Controllers\Api\v1\TaskController;


Route::group(['prefix' => 'v1'], function (){
    Route::group(['middleware' => ['cors', 'json.response']], function () {
        Route::post('/register', [AuthController::class, 'register']);
        Route::post('/login', [AuthController::class, 'login'])->name('login');
    });
    Route::middleware(['cors', 'json.response','auth:api'])->group(function (){
        Route::get('/logout', [AuthController::class, 'logout']);
        Route::get('/project/{project}/task', [TaskController::class, 'index']);
    });
    Route::resource('/task', TaskController::class);
    Route::resource('/project',ProjectController::class);
});
