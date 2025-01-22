function Crear-Carpeta {
    $nombreCarpeta = Read-Host "Introduce el nombre de la carpeta que quieres crear"
    if (-not (Test-Path $nombreCarpeta)) {
        New-Item -ItemType Directory -Path $nombreCarpeta
        Write-Host "Carpeta '$nombreCarpeta' creada exitosamente."
    } else {
        Write-Host "La carpeta '$nombreCarpeta' ya existe."
    }
}

function Crear-Fichero {
    $nombreFichero = Read-Host "Introduce el nombre del fichero que quieres crear"
    if (-not (Test-Path $nombreFichero)) {
        New-Item -ItemType File -Path $nombreFichero
        Write-Host "Fichero '$nombreFichero' creado exitosamente."
    } else {
        Write-Host "El fichero '$nombreFichero' ya existe."
    }
}

function Cambiar-Nombre {
    $rutaAntigua = Read-Host "Introduce la ruta del fichero o carpeta que quieres renombrar"
    if (Test-Path $rutaAntigua) {
        $nuevoNombre = Read-Host "Introduce el nuevo nombre"
        Rename-Item -Path $rutaAntigua -NewName $nuevoNombre
        Write-Host "Se ha renombrado '$rutaAntigua' a '$nuevoNombre'"
    } else {
        Write-Host "El archivo o carpeta '$rutaAntigua' no existe."
    }
}

function Borrar-Item {
    $ruta = Read-Host "Introduce la ruta del fichero o carpeta que quieres borrar"
    if (Test-Path $ruta) {
        Remove-Item -Path $ruta -Recurse -Force
        Write-Host "'$ruta' borrado exitosamente."
    } else {
        Write-Host "El archivo o carpeta '$ruta' no existe."
    }
}

function Verificar-Existencia {
    $ruta = Read-Host "Introduce la ruta del fichero o carpeta que quieres verificar"
    if (Test-Path $ruta) {
        Write-Host "El archivo o carpeta '$ruta' existe."
    } else {
        Write-Host "El archivo o carpeta '$ruta' no existe."
    }
}

function Mostrar-Contenido {
    $directorio = Read-Host "Introduce la ruta del directorio"
    if (Test-Path $directorio) {
        Get-ChildItem -Path $directorio | ForEach-Object { Write-Host $_.Name }
    } else {
        Write-Host "El directorio '$directorio' no existe."
    }
}

function Mostrar-FechaHora {
    $fechaHora = Get-Date
    Write-Host "Fecha y hora actual: $fechaHora"
}

do {
    Write-Host "Menú de opciones:"
    Write-Host "a) Crear una carpeta"
    Write-Host "b) Crear un fichero nuevo"
    Write-Host "c) Cambiar el nombre de un fichero o carpeta"
    Write-Host "d) Borrar un archivo o carpeta"
    Write-Host "e) Verificar si existe un fichero o carpeta"
    Write-Host "f) Mostrar el contenido de un directorio"
    Write-Host "g) Mostrar la fecha y hora actuales"
    Write-Host "x) Salir"
    
    $opcion = Read-Host "Elige una opción (a-x)"

    switch ($opcion) {
        'a' { Crear-Carpeta }
        'b' { Crear-Fichero }
        'c' { Cambiar-Nombre }
        'd' { Borrar-Item }
        'e' { Verificar-Existencia }
        'f' { Mostrar-Contenido }
        'g' { Mostrar-FechaHora }
        'x' { }
        default { Write-Host "Opción no válida. Intenta de nuevo." }
    }
} while ($opcion -ne 'x')
