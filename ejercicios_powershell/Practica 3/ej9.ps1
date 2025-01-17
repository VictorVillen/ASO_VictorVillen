$renta = Read-Host "Introduce tu renta anual en euros"

$renta = [double]$renta

if ($renta -lt 10000) {
    $impositivo = "5%"
} elseif ($renta -ge 10000 -and $renta -lt 20000) {
    $impositivo = "15%"
} elseif ($renta -ge 20000 -and $renta -lt 35000) {
    $impositivo = "20%"
} elseif ($renta -ge 35000 -and $renta -lt 60000) {
    $impositivo = "30%"
} else {
    $impositivo = "45%"
}

Write-Host "Tu tipo impositivo es: $impositivo" 
