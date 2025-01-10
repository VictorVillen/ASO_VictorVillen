Write-host "********* CALCULADORA *********"
Write-Host ""

$num1 = Read-Host "Introduce el primer número"
$num2 = Read-Host "Introduce el segundo número"

$num1 = [double]$num1
$num2 = [double]$num2

write-host "1.Sumar"
write-host "2.Restar"
Write-Host "3.Multiplicar"
Write-Host "4.Dividir"
Write-Host ""

$opcion = Read-Host "Elige la operacion que quieres realizar (1-4)"

switch ($opcion) {
    1 {
        $resultado = $num1 + $num2
        Write-Host "Resultado de la suma: $resultado"
    }
    2 {
        $resultado = $num1 - $num2
        Write-Host "Resultado de la resta: $resultado" 
    }
    3 {
        $resultado = $num1 * $num2
        Write-Host "Resultado de la multiplicación: $resultado" 
    }
    4 {
       $resultado = $num1 / $num2
            Write-Host "Resultado de la división: $resultado" 
        }
    Default {
        Write-Host "Opción inválida. Selecciona un número entre 1 y 4."
    }
}