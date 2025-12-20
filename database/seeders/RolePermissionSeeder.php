<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use App\Models\User;
use Illuminate\Support\Facades\DB;


class ArgosRolesAndPermissionsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Sécurité : transaction
        DB::transaction(function () {

            /*
            |--------------------------------------------------------------------------
            | 1. PERMISSIONS MÉTIER ARGOS
            |--------------------------------------------------------------------------
            */
            $permissions = [
                'personnel.view',
                'personnel.create',
                'personnel.update',
                'personnel.delete',
            ];

            foreach ($permissions as $permission) {
                Permission::firstOrCreate(
                    ['name' => $permission, 'guard_name' => 'web']
                );
            }

            /*
            |--------------------------------------------------------------------------
            | 2. RÔLES ARGOS
            |--------------------------------------------------------------------------
            */
            $superadminRole = Role::firstOrCreate(
                ['name' => 'Superadmin', 'guard_name' => 'web']
            );

            $adminRole = Role::firstOrCreate(
                ['name' => 'Admin', 'guard_name' => 'web']
            );

            $userRole = Role::firstOrCreate(
                ['name' => 'User', 'guard_name' => 'web']
            );

            /*
            |--------------------------------------------------------------------------
            | 3. ATTRIBUTION DES PERMISSIONS
            |--------------------------------------------------------------------------
            */

            // SuperAdmin : TOUTES les permissions
            $superadminRole->syncPermissions(Permission::all());

            // Admin : AUCUNE permission par défaut (volontaire)
            $adminRole->syncPermissions([]);

            // User : aucune permission
            $userRole->syncPermissions([]);

            /*
            |--------------------------------------------------------------------------
            | 4. ATTRIBUTION DU RÔLE SUPERADMIN AU PREMIER USER
            |--------------------------------------------------------------------------
            */

            $superAdminUser = User::orderBy('id')->first();

            if ($superAdminUser) {
                $superAdminUser->assignRole($superadminRole);
            }
        });
    }
}
