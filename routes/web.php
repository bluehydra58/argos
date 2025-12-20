<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Redirection racine
|--------------------------------------------------------------------------
| Toute arrivée sur / redirige vers le login Fortify
*/
Route::get('/', function () {
    return redirect()->route('login');
});

/*
|--------------------------------------------------------------------------
| Routes protégées (ARGOS)
|--------------------------------------------------------------------------
| Toutes les routes métier doivent être derrière auth
*/
Route::middleware(['auth'])->group(function () {

    /*
    |--------------------------------------------------------------------------
    | Dashboard ARGOS
    |--------------------------------------------------------------------------
    */
    Route::get('/dashboard', function () {
        return 'Dashboard ARGOS';
    })->name('dashboard');

    /*
    |--------------------------------------------------------------------------
    | 👉 ICI tu gardes / ajoutes TOUTES tes autres routes existantes
    |--------------------------------------------------------------------------
    | Exemple :
    |
    | Route::get('/personnel', [PersonnelController::class, 'index']);
    | Route::get('/documents', [DocumentController::class, 'index']);
    |
    */
});

/*
|--------------------------------------------------------------------------
| Logout (optionnel si bouton personnalisé)
|--------------------------------------------------------------------------
| Fortify gère POST /logout automatiquement
| NE PAS créer de route GET /logout
*/
