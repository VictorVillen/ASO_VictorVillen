#! /bin/bash

read -p "Introduce un numero: " num1
read -p "Introduce otro numero: " num2

if [[ "$num1" > "$num2" ]]; then 
	echo "$num1 es mayor que $num2"
elif [[ "$num1" < "$num2" ]] ; then
	echo "$num1 es menor que $num2"
fi
