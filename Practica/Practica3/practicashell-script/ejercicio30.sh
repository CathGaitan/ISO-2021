#!/bin/bash
dirBin=$HOME/bin
contMovidos=0
comprobarCarpetaBin(){
	if [ ! -d $dirBin ]; then
		echo "Se creara el directorio bin en su carpeta personal"
		mkdir $dirBin
	fi
}

moverElementos(){
	archivos=`ls`
	echo $archivos
	for i in $archivos;do
		if [ -x $i ]; then
			cp $i $dirBin
			echo "Se movio el archivo $i"
			contMovidos=`expr $contMovidos + 1`
		fi
	done
	echo "Se movieron $contMovidos archivos"
}

comprobarCarpetaBin
moverElementos

