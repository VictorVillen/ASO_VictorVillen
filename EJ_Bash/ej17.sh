#! /bin/bash

sum=0

while true; do

	read -p "Introduce un numero (0 para terminar): " num
	
	if [ "$num" -eq 0 ]; then
		echo "La suma total es: $sum"
		break
	fi

	sum=$((sum + num))

done
