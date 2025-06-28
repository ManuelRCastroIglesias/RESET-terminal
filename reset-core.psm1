# reset-core.psm1
# Módulo interno para RESET-Terminal™

function RESET {
    Write-Host "[RESET] Cerrando instancia actual y regenerando entorno..." -ForegroundColor Cyan
    $profilePath = "launch-reset.ps1"
    Start-Process -FilePath "pwsh" -ArgumentList "-NoExit", "-Command", "& '$profilePath'" -WorkingDirectory (Get-Location)
    exit
}

Export-ModuleMember -Function RESET
