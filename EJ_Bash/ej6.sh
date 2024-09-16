#! /bin/bash

read -p "Introduce una palabra que se añadira al fichero lista.txt: " palabra

echo $palabra >> lista.txt

cat lista.txt
