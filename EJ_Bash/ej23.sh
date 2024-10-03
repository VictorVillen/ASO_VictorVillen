#!/bin/bash

directorio="$1"

if [ ! -d "$directorio" ]; then
  echo "Error: El directorio '$directorio' no existe."
  exit 1
fi

contador=0

for entrada in "$directorio"/*; do
  if [ -d "$entrada" ]; then
    echo "$entrada es un directorio"
  elif [ -f "$entrada" ]; then
    echo "$entrada es un fichero"
  elif [ -L "$entrada" ]; then
    echo "$entrada es un enlace simbólico"
  elif [ -b "$entrada" ]; then
    echo "$entrada es un archivo especial de bloque"
  elif [ -c "$entrada" ]; then
    echo "$entrada es un archivo especial de carácter"
  else
    echo "$entrada es otro tipo de archivo"
  fi
  contador=$((contador + 1))
done

echo "Número total de entradas procesadas: $contador"
