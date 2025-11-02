# Script helper para ejecutar tests de Maestro en Windows
# Opción 1: Desde WSL (si está disponible)
# Opción 2: Desde Docker
# Opción 3: Muestra instrucciones para Maestro Cloud

param(
    [string]$TestFile = "",
    [switch]$UseDocker = $false,
    [switch]$UseWSL = $true
)

$testDir = "test/integration_test/flows"

if ($TestFile -ne "") {
    $testPath = "$testDir/$TestFile"
} else {
    $testPath = $testDir
}

if ($UseWSL -and (Get-Command wsl -ErrorAction SilentlyContinue)) {
    Write-Host "Ejecutando tests de Maestro desde WSL..." -ForegroundColor Green
    Write-Host ""
    
    # Obtener la ruta WSL usando wslpath si está disponible
    $wslPath = ""
    $wslPathResult = wsl wslpath -u "$($PWD.Path)" 2>$null
    if ($LASTEXITCODE -eq 0 -and $wslPathResult) {
        $wslPath = $wslPathResult.Trim()
    } else {
        # Construir manualmente: /mnt/<drive>/<path>
        $drive = $PWD.Drive.Name.ToLower()
        $relativePath = $PWD.Path -replace "^$([regex]::Escape($PWD.Drive.Name)):", ""
        $relativePath = $relativePath.TrimStart('\')
        $unixPath = $relativePath -replace '\\', '/'
        $wslPath = "/mnt/$drive/$unixPath"
    }
    
    $wslTestPath = "$wslPath/$($testPath -replace '\\', '/')"
    
    Write-Host "Directorio Windows: $($PWD.Path)" -ForegroundColor Gray
    Write-Host "Ruta WSL base: $wslPath" -ForegroundColor Gray
    Write-Host "Ruta completa tests: $wslTestPath" -ForegroundColor Gray
    Write-Host ""
    
    # Ejecutar maestro directamente con la ruta completa
    # Verificar primero si maestro está instalado
    $maestroCheck = wsl sh -c "command -v maestro" 2>$null
    if ($LASTEXITCODE -eq 0 -and $maestroCheck) {
        Write-Host "[OK] Maestro encontrado en WSL" -ForegroundColor Green
        
        # Verificar si Java está instalado
        $javaCheck = wsl sh -c "command -v java" 2>$null
        if ($LASTEXITCODE -ne 0 -or -not $javaCheck) {
            Write-Host "[!] Java no está instalado en WSL. Maestro requiere Java." -ForegroundColor Yellow
            Write-Host ""
            Write-Host "Para instalar Java en WSL (Ubuntu/Debian), ejecuta:" -ForegroundColor Cyan
            Write-Host '  wsl sudo apt update && sudo apt install -y openjdk-17-jdk' -ForegroundColor White
            Write-Host ""
            Write-Host "O para instalar Java 11:" -ForegroundColor Cyan
            Write-Host '  wsl sudo apt update && sudo apt install -y openjdk-11-jdk' -ForegroundColor White
            Write-Host ""
            exit 1
        } else {
            Write-Host "[OK] Java encontrado en WSL" -ForegroundColor Green
            Write-Host ""
            Write-Host "Ejecutando tests de Maestro..." -ForegroundColor Green
            Write-Host ""
            
            # Escapar la ruta para el shell (escapar comillas simples)
            $escapedTestPath = $wslTestPath.Replace("'", "''")
            $command = "maestro test '$escapedTestPath'"
            wsl sh -c $command
        }
    } else {
        Write-Host "[!] Maestro no está instalado en WSL." -ForegroundColor Yellow
        Write-Host ""
        Write-Host "Para instalar Maestro en WSL, ejecuta:" -ForegroundColor Cyan
        Write-Host "  wsl" -ForegroundColor White
        Write-Host "  curl -Ls https://get.maestro.mobile.dev | bash" -ForegroundColor White
        Write-Host ""
        Write-Host "O ejecuta desde PowerShell:" -ForegroundColor Cyan
        Write-Host "  wsl curl -Ls https://get.maestro.mobile.dev | wsl bash" -ForegroundColor White
        Write-Host ""
        Write-Host "NOTA: Maestro también requiere Java. Instálalo con:" -ForegroundColor Yellow
        Write-Host '  wsl sudo apt update && sudo apt install -y openjdk-17-jdk' -ForegroundColor White
    }
} elseif ($UseDocker -and (Get-Command docker -ErrorAction SilentlyContinue)) {
    Write-Host "Ejecutando tests de Maestro desde Docker..." -ForegroundColor Green
    Write-Host ""
    
    docker run --rm -it `
        -v "${PWD}:/workdir" `
        -w /workdir `
        mobile-dev-inc/maestro `
        test $testPath
} else {
    Write-Host "=== Opciones para ejecutar tests de Maestro ===" -ForegroundColor Cyan
    Write-Host ""
    
    if (-not (Get-Command wsl -ErrorAction SilentlyContinue)) {
        Write-Host "[!] WSL no está disponible." -ForegroundColor Yellow
        Write-Host ""
        Write-Host "Para instalar WSL:" -ForegroundColor Cyan
        Write-Host "  wsl --install" -ForegroundColor White
        Write-Host ""
    }
    
    if (-not (Get-Command docker -ErrorAction SilentlyContinue)) {
        Write-Host "[!] Docker no está disponible." -ForegroundColor Yellow
        Write-Host ""
        Write-Host "Para usar Docker, instálalo desde: https://www.docker.com/products/docker-desktop" -ForegroundColor Cyan
        Write-Host ""
    }
    
    Write-Host "Opciones disponibles:" -ForegroundColor Green
    Write-Host ""
    Write-Host "1. Desde WSL:" -ForegroundColor Cyan
    Write-Host "   wsl" -ForegroundColor White
    Write-Host "   cd /mnt/c/Users/Mateo/Documents/Aplicaciones/Artemis" -ForegroundColor White
    Write-Host "   maestro test $testPath" -ForegroundColor White
    Write-Host ""
    Write-Host "2. Desde Docker:" -ForegroundColor Cyan
    Write-Host "   docker run --rm -it -v `$PWD:/workdir mobile-dev-inc/maestro test $testPath" -ForegroundColor White
    Write-Host ""
    Write-Host "3. Maestro Cloud:" -ForegroundColor Cyan
    Write-Host "   Visita: https://cloud.mobile.dev/" -ForegroundColor White
    Write-Host ""
    
    Write-Host "Para más información, consulta: test/integration_test/README.md" -ForegroundColor Yellow
}

