#!/bin/bash

# Número máximo de líneas
max=5

for ((i=1; i<=max; i++)); do

  for ((j=1; j<=i; j++)); do
    echo -n "$i"
  done

  echo ""
done
