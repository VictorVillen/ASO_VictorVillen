$contraseña = "Hola01"

$contraseñausuario = Read-Host "Introduce la contraseña"

if ($contraseña.ToLower() -eq $contraseñausuario.ToLower()) {
    Write-Host "La contraseña es correcta." 
} else {
    Write-Host "La contraseña es incorrecta." 
}
