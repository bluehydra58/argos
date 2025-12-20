<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    public function run(): void
    {
        /*
        |--------------------------------------------------------------------------
        | SUPERADMIN ARGOS
        | Authentification par MATRICULE
        |--------------------------------------------------------------------------
        */

        User::updateOrCreate(
            [
                'matricule' => '20569/S', // identifiant UNIQUE
            ],
            [
                'first_name' => 'Super',
                'last_name'  => 'Admin',
                'username'   => 'superadmin',
                'email'      => 'superadmin@example.com', // facultatif
                'password'   => Hash::make('password'),
                'email_verified_at' => now(),
            ]
        );

        /*
        |--------------------------------------------------------------------------
        | (OPTIONNEL) ADMIN DE TEST
        |--------------------------------------------------------------------------
        | À garder seulement si tu veux un admin de test
        */

        
        User::updateOrCreate(
            [
                'matricule' => '20570/S',
            ],
            [
                'first_name' => 'Admin',
                'last_name'  => 'Test',
                'username'   => 'admin',
                'email'      => 'admin@example.com',
                'password'   => Hash::make('password'),
                'email_verified_at' => now(),
            ]
        );
        

        /*
        |--------------------------------------------------------------------------
        | (OPTIONNEL) USER DE TEST
        |--------------------------------------------------------------------------
        */

        
        User::updateOrCreate(
            [
                'matricule' => '20571/S',
            ],
            [
                'first_name' => 'User',
                'last_name'  => 'Test',
                'username'   => 'user',
                'email'      => 'user@example.com',
                'password'   => Hash::make('password'),
                'email_verified_at' => now(),
            ]
        );
        
    }
}
