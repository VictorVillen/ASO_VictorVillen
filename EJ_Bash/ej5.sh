#! /bin/bash

read -p "Introduce un numero: " num1
read -p "Introduce otro numero: " num2

num3=$(((num1 + num2)/2))

echo "La media aritmetica entre los dos numeros es: $num3"
