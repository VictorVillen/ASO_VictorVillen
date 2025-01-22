$numero = Read-Host "Introduce un numero"

$numero = [int]$numero

for ($a = 1; $a -le 10; $a++) {
    $resultado = $numero * $a
    Write-Host "$numero X $a = $resultado"
}