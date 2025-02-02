# Ejercicio 4: los permisos que se le han puesto a la carpeta por defecto han sido de lectura

Grant-SmbShareAccess -Name aso -AccountName profesores -AccessRight Full -Force

Grant-SmbShareAccess -Name aso -AccountName alumnos -AccessRight Read -Force

Revoke-SmbShareAccess -Name aso -AccountName Todos -Force