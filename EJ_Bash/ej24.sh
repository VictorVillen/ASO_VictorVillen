#!/bin/bash

directorio="$1"

if [ ! -d "$directorio" ]; then
  echo "Error: '$directorio' no existe o no es un directorio."
  exit 1
fi

contador_ficheros=0
contador_subdirectorios=0

for entrada in "$directorio"/*; do
  if [ -f "$entrada" ]; then
    contador_ficheros=$((contador_ficheros + 1))
  elif [ -d "$entrada" ]; then
    contador_subdirectorios=$((contador_subdirectorios + 1))
  fi
done

echo "Número de ficheros: $contador_ficheros"
echo "Número de subdirectorios: $contador_subdirectorios"
