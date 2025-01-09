Write-Host "Ingresa un número:"
$numero = Read-Host

    if ($numero % 2 -eq 0) {
        Write-Host "El número $numero es par."
    } else {
        Write-Host "El número $numero es impar."
    }
