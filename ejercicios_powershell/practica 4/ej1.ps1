$nombre = Read-Host "Introduce tu nombre"
$numero = Read-Host "Introduce un numero"

$numero = [double]$numero

for ($a = 1; $a -le $numero; $a++)
{
    Write-Host $nombre
}