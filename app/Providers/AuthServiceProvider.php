<?php

namespace App\Providers;

use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;
use App\Policies\UserCreatePolicy;
use App\Policies\UserUpdatePolicy;
use App\Policies\UserDeletePolicy;
use Illuminate\Support\Facades\Gate;


/*
|--------------------------------------------------------------------------
| ARGOS – AuthServiceProvider
|--------------------------------------------------------------------------
| Ce provider enregistre les Policies utilisées par le système
| d’autorisation Laravel (Gate / Policy).
|
| Sans ce fichier :
| - authorize() ne fonctionne pas
| - @can ne fonctionne pas
| - Les policies ne sont jamais appelées
|
*/

use App\Models\Argos\Personnel;
use App\Policies\Argos\PersonnelPolicy;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * The policy mappings for the application.
     *
     * @var array<class-string, class-string>
     */
    protected $policies = [
        Personnel::class => PersonnelPolicy::class,
        \App\Models\User::class => \App\Policies\UserPolicy::class,
        \App\Models\User::class => \App\Policies\UserUpdatePolicy::class,
        \App\Models\User::class => \App\Policies\UserDeletePolicy::class,
    ];

    /**
     * Register any authentication / authorization services.
     */
    public function boot(): void
    {
        $this->registerPolicies();

        /*
         |--------------------------------------------------------------------------
         | Ici, plus tard, on pourra :
         | - ajouter des Gates globales
         | - ajouter des règles transversales
         |--------------------------------------------------------------------------
         */

         Gate::define('user.create', [UserCreatePolicy::class, 'create']);
         Gate::define('user.update', [UserUpdatePolicy::class, 'update']);
        Gate::define('user.delete', [UserDeletePolicy::class, 'delete']);
    }
}
