# 🚀 Script de Auto-sincronización Pilos Dogs Menu
# Automatiza el push de cambios a GitHub

param(
    [string]$CommitMessage = "Auto-sync: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')",
    [switch]$Force,
    [switch]$Help
)

# Colores para output
function Write-Success { Write-Host "✅ $args" -ForegroundColor Green }
function Write-Error-Custom { Write-Host "❌ $args" -ForegroundColor Red }
function Write-Info { Write-Host "ℹ️  $args" -ForegroundColor Cyan }
function Write-Warning-Custom { Write-Host "⚠️  $args" -ForegroundColor Yellow }

# Mostrar ayuda
if ($Help) {
    Write-Info "Auto-sync Script para Pilos Dogs Menu"
    Write-Host @"
Uso: .\auto-sync.ps1 [opciones]

Opciones:
  -CommitMessage "Tu mensaje"    Mensaje del commit (default: timestamp)
  -Force                          Fuerza el push aunque no haya cambios
  -Help                           Muestra esta ayuda

Ejemplos:
  .\auto-sync.ps1
  .\auto-sync.ps1 -CommitMessage "Update menu items"
  .\auto-sync.ps1 -Force

"@
    exit 0
}

Write-Host "🐕 Pilos Dogs - Auto-sync Script" -ForegroundColor Magenta
Write-Host "=================================" -ForegroundColor Magenta
Write-Info ""

# Verificar que estamos en un repositorio git
if (!(Test-Path ".git")) {
    Write-Error-Custom "❌ No se encontró repositorio Git. Ejecuta este script desde la raíz del proyecto."
    exit 1
}

# Mostrar estado actual
Write-Info "Verificando estado del repositorio..."
$status = git status --short
if ([string]::IsNullOrEmpty($status) -and -not $Force) {
    Write-Warning-Custom "No hay cambios para sincronizar"
    exit 0
}

Write-Success "Cambios detectados:"
if (-not [string]::IsNullOrEmpty($status)) {
    Write-Host $status -ForegroundColor Yellow
}

# Agregar todos los cambios
Write-Info "Agregando cambios..."
git add .
Write-Success "Cambios agregados"

# Crear commit
Write-Info "Creando commit..."
git commit -m $CommitMessage
Write-Success "Commit creado: $CommitMessage"

# Push a GitHub
Write-Info "Sincronizando con GitHub..."
$branch = git rev-parse --abbrev-ref HEAD
git push -u origin $branch

if ($LASTEXITCODE -eq 0) {
    Write-Success "✅ Sincronización completada exitosamente"
    Write-Info "Branch: $branch"
    Write-Info "Puedes ver los cambios en: https://github.com/xCesar24x/Pilosmenu"
} else {
    Write-Error-Custom "Error durante la sincronización"
    exit 1
}

Write-Host ""
Write-Info "Próximas acciones:"
Write-Host "  • Los cambios se sincronizarán automáticamente cada 6 horas"
Write-Host "  • GitHub Actions ejecutará validaciones automáticas"
Write-Host "  • Los logs están disponibles en: https://github.com/xCesar24x/Pilosmenu/actions"
