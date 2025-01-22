$numero = 49
$numusu = -1

Write-Host "Se ha generado un numero del 1 al 100, intenta adivinarlo"
while ($numero -ne $numusu) {
    $numusu = Read-Host "Numero"
    if ($numero -gt $numusu) {
        Write-Host "El numero es mayor al que has puesto"
    }
    if ($numero -lt $numusu) {
        Write-Host "El numero es menor al que has puesto"
    } 
    if ($numusu -eq $numero) { 
        Write-Host "Has adivinado el numero!"
    }
}