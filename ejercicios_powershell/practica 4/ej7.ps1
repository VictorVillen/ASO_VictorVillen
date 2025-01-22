$numero = Read-Host "Introduce un numero entero positivo"


for ($a = 1; $a -le $numero; $a++) {
    Write-Host ("*" * $a)
}