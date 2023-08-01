#!/bin/bash

inicializar(){
	arreglo=()	
	echo "hola"
}

inicializarConValores(){
	for i in `seq 1 $1`;do
		arreglo[i]=$2
	done
}

agregarElem(){
	arreglo=(${arreglo[@]} $1)
}

eliminarElem(){
	if [ $1 -le `expr ${#arreglo[@]} - 1` ];then
		unset arreglo[$1]
	else
		echo "No es una posicion valida"
	fi
	arreglo=(${arreglo[@]})
}

longitud(){
	echo "Longitud del arreglo: ${#arreglo[@]}"
}

imprimir(){
	echo "Elementos: ${arreglo[@]}"
}

inicializarConValores 4 cath
imprimir
longitud
agregarElem maciel
imprimir
longitud
eliminarElem 3
imprimir
longitud
