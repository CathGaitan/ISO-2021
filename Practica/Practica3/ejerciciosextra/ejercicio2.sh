#!/bin/bash
if [ ! -d archivosServidores ];then
	mkdir archivosServidores
fi
archivos=(`tar -xvf input.tar -C archivosServidores`) ##arreglo de archivos
archivos=($(for i in "${archivos[@]}"; do echo $i; done | sort)) ##ordeno mi arreglo de archivos
N=`expr ${#archivos[@]} / 2` ##valor N
cantDiferencias=0 ##contador de diferencias
arrDiferencias=() ##arreglo para marcar las diferencias

comparar(){
	cd archivosServidores
	local j=0 ##para acceder a las posiciones del arrDiferencias
	for i in ${archivos[@]};do ##recorro los archivos
		if [ $i = "s1" ]; then ##si ya recorri todos los archivos p
			break ##salgo del for
		fi
    	local diferencias=`diff $i ${archivos[$N]}` ##utilizo comando dif para comparar archivos
    	N=`expr $N + 1` ##incremento N para luego poder acceder al proximo archivo
    	if [ "$diferencias" != "" ];then ##si hay diferencias
    		 cantDiferencias=`expr $cantDiferencias + 1` ##incremento contador de diferencias
    		 arrDiferencias[j]=1 ##pongo un 1 en el vector
    	else
    		arrDiferencias[j]=0 ##si no habia diferencias pongo un 0
    	fi
    	j=`expr $j + 1` ##Incremento j para luego estar en la siguiente posicion del arrDiferencias
    done
}

comparar
echo ${arrDiferencias[@]}
echo $cantDiferencias
