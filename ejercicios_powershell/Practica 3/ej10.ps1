$baseDinero = 2400

$puntuacion = Read-Host "Introduce tu puntuacióon (0.0, 0.4, 0.6 o mas)"

$puntuacion = [double]$puntuacion

if ($puntuacion -eq 0.0) {
    $nivel = "Inaceptable"
    $dinero = $baseDinero * $puntuacion
} elseif ($puntuacion -eq 0.4) {
    $nivel = "Aceptable"
    $dinero = $baseDinero * $puntuacion
} elseif ($puntuacion -ge 0.6) {
    $nivel = "Meritorio"
    $dinero = $baseDinero * $puntuacion
} else {
    Write-Host "Puntuación inválida. Introduce 0.0, 0.4, o 0.6 o más." 
    exit
}

Write-Host "Nivel de rendimiento: $nivel" 
Write-Host "Cantidad de dinero recibida: $dinero €" 
