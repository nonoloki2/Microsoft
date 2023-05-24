﻿# Definir caminho da pasta de origem e pasta de destino
$origem = "C:\Drivers\3410"
$destino = "D:\Temp\Latitude_3410\drivers.wim"

# Comprimir a pasta de origem em um arquivo .wim usando o DISM
$command = "dism /Capture-Image /ImageFile:$destino /CaptureDir:$origem /Compress:Max /Name:DRIVERS"
Start-Process -FilePath "cmd.exe" -ArgumentList "/c $command" -Wait

# Verificar se a captura foi bem-sucedida
if ($LASTEXITCODE -eq 0) {
    Write-Host "A pasta foi capturada e comprimida com sucesso em um arquivo .wim."
} else {
    Write-Host "Ocorreu um erro ao capturar a pasta e comprimi-la em um arquivo .wim."
}
