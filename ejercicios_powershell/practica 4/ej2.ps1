$edad = Read-Host "Introduce tu edad"

Write-Host "Has cumplido todos estos años."

for ($a = 1; $a -le $edad; $a++)
{
    Write-Host $a
}