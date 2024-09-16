#! /bin/bash

archivo_salida="listado_etc.txt"
ls /etc > "$archivo_salida"
cat "$archivo_salida"

num_lineas=$(wc -l < "$archivo_salida")
num_palabras=$(wc -w < "$archivo_salida")

echo "Numero de lineas: $num_lineas"
echo "Numero de palabras: $num_palabras"

