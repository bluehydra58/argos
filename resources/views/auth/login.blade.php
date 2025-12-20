<!DOCTYPE html>
<html lang="fr" data-theme="dark">
<head>
    <meta charset="UTF-8">
    <title>Connexion — ARGOS</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- CSS ARGOS -->
    <link href="{{ asset('css/argos-login.css') }}" rel="stylesheet">
</head>
<body class="argos-login-body">

<!-- THEME TOGGLE -->
<button id="themeToggle" class="argos-theme-toggle" aria-label="Changer le thème">
    <span id="themeIcon">🌙</span>
</button>

<div class="container-fluid h-100">
    <div class="row h-100">

        <!-- LEFT VISUAL -->
        <div class="col-lg-6 d-none d-lg-flex argos-login-visual">
            <div class="argos-logo-wrapper">
                <img
                    src="{{ asset('images/gendarmerie-logo.png') }}"
                    alt="Gendarmerie Nationale"
                    class="argos-rotating-logo"
                >
            </div>
        </div>

        <!-- RIGHT FORM -->
        <div class="col-lg-6 col-12 argos-login-form">
            <div class="w-100">

                <div class="text-center mb-4">
                    <img src="{{ asset('images/logo/logo-gendarmerie.png') }}" alt="ARGOS">
                    <h1 class="argos-title">ARGOS</h1>
                    <p class="argos-subtitle">Système de gestion RH</p>
                </div>

                @if ($errors->any())
                    <div class="alert alert-danger">
                        Identifiants incorrects.
                    </div>
                @endif

                <form method="POST" action="{{ route('login') }}">
                    @csrf

                    <div class="mb-3 text-start">
                        <label class="form-label">Matricule</label>
                        <input type="text" name="matricule" class="form-control" placeholder="EX:00987000" required autofocus>
                    </div>

                    <div class="mb-4 text-start position-relative">
                        <label class="form-label">Mot de passe</label>
                        <input type="password" name="password" id="password" class="form-control" required>
                        <span class="toggle-password" onclick="togglePassword()">👁️</span>
                    </div>

                    <div class="d-grid">
                        <button type="submit" class="btn argos-login-btn">
                            Se connecter
                        </button>
                    </div>
                </form>

            </div>
        </div>

    </div>
</div>

<!-- JS -->
<script src="{{ asset('js/argos-login.js') }}"></script>
</body>
</html>
