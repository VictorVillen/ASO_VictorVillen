Write-Host "Introduce el numero de horas trabajadas:"
$horas = Read-Host
Write-Host "Introduce el coste por hora:"
$costePorHora = Read-Host

$horas = [double]$horas
$costePorHora = [double]$costePorHora

$salario = $horas * $costePorHora

Write-Host "El salario que debemos pagarle es: $salario €"
