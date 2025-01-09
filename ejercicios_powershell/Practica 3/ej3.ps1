
write-host "Indica un numero: " 
[int]$num1 = read-host
write-host "Indica otro numero: " 
[int]$num2 = read-host
    if ($num1 -gt $num2) {
        write-host "$num1 es mayor que $num2"
    } elseif ($num1 -lt $num2) {
        write-host "$num1 es menor que $num2"
    } else {
        write-host "$num1 es igual que $num2"
    }