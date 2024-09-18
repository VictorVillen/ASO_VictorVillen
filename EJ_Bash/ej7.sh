#! /bin/bash

directorio=$1

if [[ -d "$directorio" ]]; then
	echo "El directorio es válido"
else
	echo "El directorio no existe o no es un directorio"
fi

fecha=$(date +"%Y-%m-%d")

nombre_directorio=$(basename "$directorio")

nombre_archivo="${fecha}_${nombre_directorio}.tar.gz"

tar -czf "$nombre_archivo" "$directorio"

echo "El archivo comprimido $nombre_archivo ha sido creado con exito"
