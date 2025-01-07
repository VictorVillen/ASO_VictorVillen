$nombre_usuario = $env:USERNAME
$directorio_trabajo = pwd
$dominio = $env:USERDOMAIN
$nombre_equipo = $env:COMPUTERNAME

Write-Host "Hola $nombre_usuario"
Write-Host "Tu directorio de trabajo es $directorio_trabajo"
Write-Host "Perteneces al dominio $dominio"
Write-Host "Tu equipo se llama $nombre_equipo"
