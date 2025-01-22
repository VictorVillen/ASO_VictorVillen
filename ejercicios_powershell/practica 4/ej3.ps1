$numero = Read-Host "Escribe un numero entero positivo"

$numero = [int]$numero

$cuenta = ""

for ($a = $numero; $a -ge 0; $a--) {
    if ($i -eq 0) {
        $cuenta += "$a"
    } else {
        $cuenta += "$a, "
    }
}

Write-Host $cuenta