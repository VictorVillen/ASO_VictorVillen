write-host "Indica tu edad:"
[int]$edad = read-host
    if ($edad -ge 18) {
        write-host "Eres mayor de edad."
    } else {
        write-host "Eres menor de edad."
    }