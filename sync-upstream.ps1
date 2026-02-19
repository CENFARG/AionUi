# sync-upstream.ps1
# Script para sincronizar Grama OS con el repositorio oficial de AionUI

Write-Host "Iniciando sincronización con Upstream (AionUI)..." -ForegroundColor Cyan

# 1. Traer cambios del repositorio oficial
git fetch upstream

# 2. Intentar Rebase para mantener nuestros cambios estéticos por encima
Write-Host "Aplicando rebase para mantener la soberanía estética de Grama..." -ForegroundColor Yellow
git rebase upstream/main

if ($LASTEXITCODE -ne 0) {
    Write-Host "!!! ATENCIÓN: Hubo conflictos durante la sincronización." -ForegroundColor Red
    Write-Host "Por favor, resuelve los conflictos y ejecuta 'git rebase --continue'" -ForegroundColor Gray
} else {
    Write-Host "Sincronización completada con éxito. Grama OS está actualizado." -ForegroundColor Green
}
