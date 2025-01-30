#cuando vayamos a crear el script .bat usar notepad ++ para que no añada caracteres y funcione
#crear unidad organizativa principal 
New-ADOrganizationalUnit -Name "Empresa" -Path "DC=empresa,DC=local" -Description "Unidad Empresa"

# Leer los archivos CSV
$departamentos = Import-Csv -Path "departamentos.csv" -Delimiter ';'
$empleados = Import-Csv -Path "empleados.csv" -Delimiter ';'

# Crear unidades organizativas para cada departamento
foreach ($departamento in $departamentos) {
    $nombreuo = $departamento.departamento
    New-ADOrganizationalUnit -Name $nombreuo -Path "OU=Empresa,DC=empresa,DC=local"

    # Crear el grupo para el departamento
    New-ADGroup -Name $nombreuo -GroupCategory Security -GroupScope Global -Path "OU=$nombreuo,OU=Empresa,DC=empresa,DC=local"
}

#Crear usuarios y asignarlos a sus respectivos grupos de departamento
foreach ($empleado in $empleados) {
    $nombreuo = $empleado.departamento
    $nombreusu = $empleado.nombre
    $apellidousu = $empleado.apellido
    $login = "$($nombreusu.ToLower()).$($apellidousu.ToLower())"
    $password = "aso2025."

    #crear el usuario en la unidad organizativa correspondiente
    New-ADUser -Name "$nombreusu $apellidousu" -Path "OU=$nombreuo,OU=Empresa,DC=empresa,DC=local" -SamAccountName $login -AccountPassword (ConvertTo-SecureString $password -AsPlainText -Force) -GivenName $nombreusu -Surname $apellidousu -ChangePasswordAtLogon $true -Enabled $true

    # Agregar el usuario al grupo del departamento
    Add-ADGroupMember -Identity "$nombreuo" -Members $login
}