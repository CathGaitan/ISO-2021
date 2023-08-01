#!/bin/bash
params=($*)
cantParams=$#
cont=0
verificarParametros(){
	if [ $cantParams -eq 0 ];then
		echo "Debe mandar minimo un parametro"
		exit 1
	fi
}
tipoArchivo(){
	if [ `expr $2 % 2` -ne 0 ];then
		if [ -e $1 ];then
			if [ -d $1 ];then
				echo "$1 -> es un directorio"
			else
				echo "$1 -> es un archivo comun"
			fi
		else
			echo "$1 -> no existe"
		fi
	fi
}

contadorInexistentes(){
	if [ ! -e $1 ] && [ ! -d $1 ];then
		cont=`expr $cont + 1`
	fi
}

recorrerParametros(){
	local it=0
	for i in ${params[@]};do
		tipoArchivo $i $it
		contadorInexistentes $i 
		it=`expr $it + 1`
	done
	echo "De los parametros recibidos hay $cont inexistentes"
}

verificarParametros
recorrerParametros
exit 0
