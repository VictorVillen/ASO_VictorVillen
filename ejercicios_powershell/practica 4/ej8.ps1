$numero = Read-Host "Introduce un numero entero positivo"

for ($a = 1; $a -le $numero; $a++) {
    $linea = ""
    
    for ($i = 1; $i -le $a; $i++) {
        $impar = (2 * $i - 1)
        $linea = "$impar$linea"
    }
    Write-Host $linea
}