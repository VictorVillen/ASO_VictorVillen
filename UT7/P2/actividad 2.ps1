#creación carpeta empresa
New-Item -Path C:\Empresa -ItemType Directory


$departamentos = Import-csv 'departamentos.csv' -Delimiter ";"

foreach ($departamento in $departamentos){
    #creación departamento
    New-Item -Path C:\Empresa\"$($departamento.departamento)" -ItemType Directory
}

#compartir carpeta empresa 
New-SmbShare -Path C:\Empresa -Name Empresa -ChangeAccess 'Usuarios del dominio'



#Permisos ACL

    $acl = Get-Acl -Path C:\Empresa\"$($departamento.departamento)"

    #deshabilitar la herencia y eliminar TODAS las reglas de acceso
    $acl.SetAccessRuleProtection($true, $false)
    
    #añadir al grupo Administradores Control Total
    $permisos = 'Administradores','FullControl','ContainerInherit,ObjectInherit','None','Allow'
    $ace = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisos
    $acl.SetAccessRule($ace)

    $ace | Format-Table

    #añadir al grupo Usuarios del dominio Lectura
    $permisos = 'Usuarios del dominio','Read','ContainerInherit,ObjectInherit','None','Allow'
    $ace = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisos
    $acl.SetAccessRule($ace)

    #añadir al grupo "$($dep.departamento)" Modificar
    $permisos = $($departamento.departamento),'Modify','ContainerInherit,ObjectInherit','None','Allow'
    $ace = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisos
    $acl.SetAccessRule($ace)

    #establecer los permisos
    $acl |Set-Acl -Path C:\Empresa\"$($departamento.departamento)"

    $ace | Format-Table
