# launch-reset.ps1
# Script de arranque universal para RESET-Terminal™

# Verifica integridad del script
$expectedHash = Get-Content -Path "manifest.txt" | Select-String -Pattern "launch-reset.ps1" | ForEach-Object { ($_ -split "\s+")[1] }
$actualHash = (Get-FileHash -Path $MyInvocation.MyCommand.Definition -Algorithm SHA256).Hash
if ($actualHash -ne $expectedHash) {
    Write-Error "[SECURITY] HASH mismatch. Aborting launch."
    exit 1
}

# Genera ID efímero
$guid = [guid]::NewGuid().ToString()
$timestamp = (Get-Date).ToFileTimeUtc()
$sessionID = "$guid-$timestamp"
$varName = "__r$($sessionID.GetHashCode())"
Set-Variable -Name $varName -Value $true -Scope Local

# Cargar módulo núcleo
Import-Module -Name "reset-core.psm1" -Force

# Detectar y lanzar intérprete adecuado
$defaultShell = "pwsh"
if ($env:SHELL_TYPE -eq "cmd") { $defaultShell = "cmd.exe" }
elseif ($env:SHELL_TYPE -eq "bash") { $defaultShell = "bash.exe" }
elseif ($env:SHELL_TYPE -eq "wsl") { $defaultShell = "wsl.exe" }

Start-Process -FilePath $defaultShell -ArgumentList "-NoExit" -WorkingDirectory (Get-Location)
exit
