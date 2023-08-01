#!/bin/bash
if [ $# -ne 1 ]; then
	echo "Debe mandar el nombre de un archivo"
	exit 1
fi
if [ -e $1 ]; then
	if [ -d $1 ]; then
		echo "Es un directorio"
	else
		echo "Es un archivo comun"
	fi
else
	`mkdir $1`
	echo "Se creo un directorio llamado $1"
fi
exit 0
