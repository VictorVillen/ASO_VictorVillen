#! /bin/bash

agenda="lista.txt" 

menu() {
	echo "   AGENDA"
	echo ""
	echo "1. Agregar"
	echo "2. Buscar"
	echo "3. Listar"
	echo "4. Ordenar"
	echo "5. Borrar"
	echo ""
	read -p "Seleccione el numero de la opcion que quiera: " opcion
}

Agregar() {
  read -p "Nombre: " nombre
  read -p "Dirección: " direccion
  read -p "Teléfono: " telefono
  echo "$nombre | $direccion | $telefono" >> "$agenda.txt"
  echo "Registro añadido correctamente."
}

Buscar() {
  read -p "Introduzca nombre, dirección o teléfono a buscar: " termino
  grep -i "$termino" "$agenda.txt" || echo "No se encontraron coincidencias."
}

Listar() {
  if [[ -f "$agenda.txt" ]]; then
    cat "$agenda.txt"
  else
    echo "No hay registros disponibles."
  fi
}

Ordenar() {
  if [[ -f "$agenda.txt" ]]; then
    sort -o "$agenda.txt" "$agenda.txt"
    echo "Registros ordenados."
  else
    echo "No hay registros para ordenar."
  fi
}

Borrar() {
  if [[ -f "$agenda.txt" ]]; then
    rm "$agenda.txt"
    echo "Archivo borrado correctamente."
  else
    echo "El archivo no existe."
  fi
}

menu
case $opcion in
  1) Agregar ;;
  2) Buscar ;;
  3) Listar ;;
  4) Ordenar ;;
  5) Borrar ;;
esac
