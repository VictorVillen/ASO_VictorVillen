#! /bin/bash

if [ "$#" -lt 4 ]; then
    echo "Error. La sintaxis correcta es ./ej14.sh alta/baja nombre apellido1 apellido2 [grupo]"
    exit 1
fi

accion=$1
nombre=$2
apellido1=$3
apellido2=$4
grupo=$5

usuario="alu${apellido1:0:2}${apellido2:0:2}${nombre:0:1}"

alta_usuario() {
    if [ -z "$grupo" ]; then
        grupo=$usuario
        sudo  groupadd $grupo
    fi

sudo useradd -m -g $grupo $usuario

     if [ $? -eq 0 ]; then
        echo "Usuario $usuario creado correctamente y añadido al grupo $grupo."
    else
        echo "Error al crear el usuario $usuario."
    fi
}

baja_usuario() {
    sudo userdel -r $usuario

    if [ $? -eq 0 ]; then
        echo "Usuario $usuario eliminado correctamente."
    else
        echo "Error al eliminar el usuario $usuario."
    fi
}

case $accion in
    alta)
        alta_usuario
        ;;
    baja)
        baja_usuario
        ;;
    *)
        echo "Error. La sintaxis correcta es ./ej14.sh alta/baja nombre apellido1 apellido2 [grupo]"
        ;;
esac

