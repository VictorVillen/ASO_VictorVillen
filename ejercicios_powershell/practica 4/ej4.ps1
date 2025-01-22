$numero = Read-Host "Escribe un numero entero positivo"

$numero = [int]$numero
$numerosimpares = ""

for ($a = 1; $a -le $numero; $a++) {
    if ($a % 2 -ne 0) {
    if ($numerosImpares -eq "") {
            $numerosImpares = "$a"
        } else {
            $numerosImpares += ", $a"
        }
    }
}

Write-Host "Los numeros impares desde 1 hasta $numero son: $numerosimpares"