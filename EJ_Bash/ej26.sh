#!/bin/bash

archivo="archivos_peligrosos.txt"

> "$archivo"

find / -type f -perm -0002 -exec realpath {} \; > "$archivo" 2>/dev/null

echo "La lista de archivos peligrosos ha sido guardada en archivos_peligrosos.txt"
