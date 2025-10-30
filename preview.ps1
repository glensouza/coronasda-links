param(
    [int]$Port = 8000
)

function Start-PythonServer {
    $py = Get-Command python -ErrorAction SilentlyContinue
    if ($py) {
        Write-Host "Starting Python static server on port $Port..."
        Start-Process -FilePath $py.Path -ArgumentList "-m","http.server",$Port -WorkingDirectory (Get-Location)
        return $true
    }
    return $false
}

function Start-NpxServe {
    $npx = Get-Command npx -ErrorAction SilentlyContinue
    if ($npx) {
        Write-Host "Starting 'npx serve' on port $Port..."
        Start-Process -FilePath $npx.Path -ArgumentList "serve","-l",$Port -WorkingDirectory (Get-Location)
        return $true
    }
    return $false
}

Write-Host "Preview helper — will try to start a static server and open http://localhost:$Port"

if (-not (Start-PythonServer)) {
    if (-not (Start-NpxServe)) {
        Write-Host "Neither 'python' nor 'npx' were found on PATH. Install Python or Node.js to use this preview script." -ForegroundColor Yellow
        exit 1
    }
}

Start-Sleep -Seconds 1
Start-Process "http://localhost:$Port"
Write-Host "Opened http://localhost:$Port — stop the server processes manually when done." -ForegroundColor Green
