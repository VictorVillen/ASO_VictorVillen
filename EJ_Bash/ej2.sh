#! /bin/bash

archivo_salida="listado_etc.txt"
ls /etc > "$archivo_salida"
cat "$archivo_salida"

