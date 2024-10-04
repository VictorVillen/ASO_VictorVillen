#!/bin/bash

existe() {
  if [ -f "$1" ]; then
    echo "El archivo '$1' existe."
    chmod u+x,go-x "$1"
    echo "Permisos cambiados: ahora es ejecutable solo para el propietario."
  else
    echo "El archivo '$1' no existe."
  fi
}

existe "$1"
