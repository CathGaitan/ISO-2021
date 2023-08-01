#!/bin/bash
if [ $# -ne 3 ]; then
	echo "Debe mandar el directorio, la opcion y la cadena"
	exit 1
fi
if [ ! -d $1 ]; then
	echo "No es un directorio valido"
	exit 2
fi
if [ $2 != "-a" ] && [ $2 != "-b" ]; then
	echo "No es una opcion valida. Elija -a o -b"
	echo $2
	exit 3
fi

for i in `ls $1`; do
	echo "Parametro elegido: $1"
	if [ $2 = "-a" ]; then
		mv $1/$i $1/$i$3
	else
		mv $1/$i $1/$3$i
	fi
done
exit 0


	
