$nombre = Read-Host "Introduce tu nombre"
$sexo = Read-Host "Introduce tu sexo (M para mujer, H para hombre)"

if (($sexo -eq "M" -and $nombre[0] -lt "M") -or ($sexo -eq "H" -and $nombre[0] -gt "N")) {
    Write-Host "Perteneces al grupo A" 
} else {
    Write-Host "Perteneces al grupo B" 
}
