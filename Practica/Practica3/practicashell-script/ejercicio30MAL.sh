#!/bin/bash
ejecutables=(`ls -Fla | grep \*$ | awk 'NF>1{print $NF}' | sed -e 's/.$//'`)
dirBin="$HOME/bin"

comprobarCarpetaBin(){
	if [ ! -d $dirBin ]; then
		echo "Se creara el directorio bin en su carpeta personal"
		mkdir $dirBin
	fi
}

moverElementos(){
	if [ ${#ejecutables[@]} -eq 0 ];then
		echo "No hay archivos para mover"
		exit 0
	fi
	local cont=0
	for i in ${ejecutables[@]};do
		cp -f "`pwd`/$i" $dirBin
		for j in `ls $dirBin`;do 
			if [ -x $j ];then 
				echo "Se movio el archivo $i"
				cont=`expr $cont + 1`
			fi
		done
	done
	echo "Se han movido $cont archivos ejecutables"
}

comprobarCarpetaBin
moverElementos


