#! /bin/bash

archivo_origen=$1
archivo_destino=$2

if [[ "$#" -ne 2 ]]; then
	echo "No se han indicado dos parametros"
	exit 1
fi

if [[ ! -f "$archivo_origen" ]]; then
	echo "El archivo de origen no existe"
	exit 1
fi

if [[ -e "$archivo_destino" ]]; then 
	echo "Ya exise un identificador con el nombre del archivo de destino"
	exit 1
fi

cp "$archivo_origen" "$archivo_destino"

