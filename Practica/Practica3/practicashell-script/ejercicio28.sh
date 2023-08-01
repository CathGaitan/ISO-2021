#!/bin/bash
cantW=0
cantR=0
if [ $# -eq 0 ];then
	echo "Debe mandar el nombre de un directorio"
	exit 1
fi

contarArchivos(){
	ruta=`find ~ -type d -name $1 2>/dev/null`
	for i in `ls $ruta`;do
		path="$ruta/$i"
		if [ -r $path ];then
			cantR=`expr $cantR + 1`
		fi
		if [ -w $path ];then
			cantW=`expr $cantW + 1`
		fi
	done
	echo "Hay $cantR archivos con permisos de lectura"
	echo "Hay $cantW archivos con permisos de escritura"
}

contarArchivos $1

