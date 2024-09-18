#! /bin/bash

read -p "Introduce un numero: " num1

if [[ $num1%2 -eq 0 ]]; then
	echo "El numero es par"
else
        echo "El numero es impar"
fi
