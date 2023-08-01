#!/bin/bash
docs=(`sudo find /home -name "*.doc" | cut -d "/" -f 3`)

verArchivo(){
	local encontre="0" ##uso 0 y 1, ya que no me andan los booleanos
	for i in ${docs[@]};do
		if [ $i = $1 ];then
			sudo cat "/home/$1"
			encontre="1"
		fi
	done
	if [ $encontre = "0" ];then
		echo "Ese archivo no esta en /home"
	fi
}

cantidadArchivos(){
	echo "Cantidad archivos .doc: ${#docs[@]}"
}

preguntarBorrado(){
	read -p "Quiere eliminar el archivo logicamente o fisicamente? l/f: " respuesta
	if [ $respuesta = "l" ];then
		echo "Se borrara logicamente $1"
		unset docs[$indice] ##lo borro del vector
		docs=(${docs[@]})   ##arreglo la posicion vacia
		echo "Asi quedaria el arreglo: ${docs[@]}"
	elif [ $respuesta = "f" ];then
		echo "Se borrar fisicamente $1"
 		unset docs[$indice] ##lo borro del vector 
		docs=(${docs[@]})   ##arreglo la posicion vacia
		sudo rm "/home/$1" ##lo borro del fileSystem
		
	else
		echo "No es una respuesta valida"
	fi

}
borrarArchivo(){
	local indice=0
	for i in ${docs[@]};do ##busca posicion en donde se encuentra el archivo
		if [ $i = $1 ];then ##pasado por parametro
			break ##si lo encuentro, salgo del for
		fi
		indice=`expr $indice + 1`
	done
	if [ $indice -eq ${#docs[@]} ];then ##determino que no existe si mi "indice" es igual al numero 
		echo "Ese archivo no existe"    ##de elementos.Ya que el indice empieza desde el cero
		exit 10
	fi
	preguntarBorrado $1 $indice ##Mando como parametro el nombre del
								##archivo y la posicion en donde se encuentra
}

verArchivo prueba3.doc
cantidadArchivos
borrarArchivo prueba1.doc
