#! /bin/bash

max=5

for ((i=1; i<=max; i++)); do

  for ((j=1; j<=i; j++)); do
    echo -n "$j"
  done

  echo ""
done
