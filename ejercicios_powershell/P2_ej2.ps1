Write-Host "Introduce el primer número:"
$num1 = Read-Host
Write-Host "Introduce el segundo número:"
$num2 = Read-Host

$num1 = [double]$num1
$num2 = [double]$num2

$suma = $num1 + $num2
$resta = $num1 - $num2
$multiplicacion = $num1 * $num2
$division = $num1 / $num2
$resto = $num1 % $num2

Write-Host "La suma es: $suma"
Write-Host "La resta es: $resta"
Write-Host "La multiplicación es: $multiplicacion"
Write-Host "La división es: $division"
Write-Host "El resto es: $resto"
