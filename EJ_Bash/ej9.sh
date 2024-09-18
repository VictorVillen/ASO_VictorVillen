#! /bin/bash

read -p "Introduce un numero: " num1
read -p "Itroduce otro numero: " num2

read -p "Elije una opcion '+' '-' '*' '/' : " caracter

case "$caracter" in
[+])
	op1=$((num1 + num2))
	echo "La suma de los numeros es: $op1"
	;;
[-])
        op2=$((num1 - num2))
        echo "La resta de los numeros es: $op2"
        ;;
[*])
        op3=$((num1 * num2))
        echo "La Multiplicacion de los numeros es: $op3"
        ;;
[/])
        op4=$((num1 / num2))
        echo "La division de los numeros es: $op4"
        ;;

esac
