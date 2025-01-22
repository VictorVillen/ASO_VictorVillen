$contraseña = "hola01?"

do {
    $contrausu = Read-Host "Introduce la contraseña"
    
    if ($contrausu -ne $contraseña) {
        Write-Host "Contraseña incorrecta, inténtalo de nuevo."
    }
} while ($contrausu -ne $contraseña)

Write-Host "Contraseña correcta"
