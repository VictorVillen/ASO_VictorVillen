#! /bin/bash

num=$1

if [ "$num" -lt 2 ]; then
  echo "$num no es un número primo."
  exit 0
fi

for ((i=2; i<num; i++)); do
  if [ $((num % i)) -eq 0 ]; then
    echo "$num no es un número primo."
    exit 0
  fi
done

echo "$num es un número primo."

