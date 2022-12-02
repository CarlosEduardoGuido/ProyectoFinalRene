<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductosController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

////Productos
Route::name('api/productos2')->get('/api/productos2',[ProductosController::class,'index']);
Route::name('ap/altaproductos')->post('/ap/altaproductos',[ProductosController::class,'create']);
//Doctores
Route::name('api/doctores')->get('/api/doctores',[ProductosController::class,'index2']);
//Especialidades
Route::name('api/especialidades')->get('/api/especialidades',[ProductosController::class,'index3']);
//Inicio
Route::name('api/inicio')->get('/api/inicio',[ProductosController::class,'index4']);
