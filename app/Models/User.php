<?php

declare(strict_types=1);

namespace App\Models;

use App\Concerns\QueryBuilderTrait;
use App\Concerns\AuthorizationChecker;
use App\Notifications\AdminResetPasswordNotification;
use App\Observers\UserObserver;

use Illuminate\Auth\Notifications\ResetPassword as DefaultResetPassword;
use Illuminate\Database\Eloquent\Attributes\ObservedBy;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

use Laravel\Sanctum\HasApiTokens;
use Spatie\Permission\Traits\HasRoles;

#[ObservedBy([UserObserver::class])]
class User extends Authenticatable
{
    use AuthorizationChecker;
    use HasApiTokens;
    use HasFactory;
    use HasRoles;
    use Notifiable;
    use QueryBuilderTrait;

    /* =====================================================
     | ATTRIBUTES
     ===================================================== */

    /**
     * The attributes that are mass assignable.
     */
    protected $fillable = [
        'first_name',
        'last_name',
        'email',
        'password',
        'username',
        'avatar_id',
    ];

    /**
     * The attributes that should be hidden for arrays.
     */
    protected $hidden = [
        'password',
        'remember_token',
        'email_verified_at',
    ];

    /**
     * The attributes that should be cast.
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    /**
     * Attributes appended to the model.
     */
    protected $appends = [
        'avatar_url',
        'full_name',
    ];

    /**
     * Relationships to eager load.
     */
    protected $with = [
        'avatar',
    ];

    /* =====================================================
     | RELATIONSHIPS
     ===================================================== */

    public function actionLogs()
    {
        return $this->hasMany(ActionLog::class, 'action_by');
    }

    /**
     * User metadata.
     */
    public function userMeta()
    {
        return $this->hasMany(UserMeta::class);
    }

    /**
     * Avatar relation.
     */
    public function avatar(): BelongsTo
    {
        return $this->belongsTo(Media::class, 'avatar_id', 'id');
    }

    /* =====================================================
     | NOTIFICATIONS
     ===================================================== */

    /**
     * Send the password reset notification.
     */
    public function sendPasswordResetNotification($token): void
    {
        if (request()->is('admin/*')) {
            $this->notify(new AdminResetPasswordNotification($token));
        } else {
            $this->notify(new DefaultResetPassword($token));
        }
    }

    /* =====================================================
     | EXISTING AUTHORIZATION HELPERS
     ===================================================== */

    /**
     * Check if the user has any of the given permissions.
     */
    public function hasAnyPermission($permissions): bool
    {
        if (empty($permissions)) {
            return true;
        }

        $permissions = is_array($permissions) ? $permissions : [$permissions];

        foreach ($permissions as $permission) {
            if ($this->can($permission)) {
                return true;
            }
        }

        return false;
    }

    /* =====================================================
     | ARGOS – ROLE HELPERS (AJOUT)
     ===================================================== */

    /**
     * SuperAdmin : autorité totale
     */
    public function isSuperAdmin(): bool
    {
        return $this->hasRole('Superadmin');
    }

    /**
     * Admin paramétrable par permissions
     */
    public function isAdmin(): bool
    {
        return $this->hasRole('Admin');
    }

    /**
     * User simple (consultation)
     */
    public function isUser(): bool
    {
        return $this->hasRole('User');
    }

    /* =====================================================
     | ARGOS – PERMISSION CENTRALE (AJOUT)
     ===================================================== */

    /**
     * Vérifie une permission métier ARGOS
     *
     * @example personnel.create
     */
    public function hasPermission(string $permission): bool
    {
        // SuperAdmin : accès total, sans condition
        if ($this->isSuperAdmin()) {
            return true;
        }

        // User simple : aucune permission dynamique
        if ($this->isUser()) {
            return false;
        }

        // Admin : permissions Spatie (via rôles ou directes)
        return $this->can($permission);
    }

    /* =====================================================
     | ACCESSORS
     ===================================================== */

    /**
     * Get avatar URL.
     */
    public function getAvatarUrlAttribute(): string
    {
        if ($this->avatar_id && $this->avatar) {
            return asset('storage/media/' . $this->avatar->file_name);
        }

        return $this->getGravatarUrl();
    }

    /**
     * Gravatar / fallback avatar.
     */
    public function getGravatarUrl(int $size = 80): string
    {
        return "https://ui-avatars.com/api/{$this->full_name}/{$size}/635bff/fff/2";
    }

    /**
     * Full name accessor.
     */
    public function getFullNameAttribute(): string
    {
        return trim($this->first_name . ' ' . $this->last_name);
    }
}
