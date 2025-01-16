$ruta = Read-Host "Introduce la ruta del fichero o carpeta"

if (Test-Path -Path $ruta -PathType Container) {
    Write-Host "La carpeta existe."
    Get-ChildItem -Path $ruta -Recurse
} else {
    Write-Host "La carpeta no existe." 
}