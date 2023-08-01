#!/bin/bash
vector1=(10 4 2 5)
vector2=(55 21 5 1)
N=`expr ${#vector1[@]} - 1`

sumar(){
	for i in `seq 0 $N`;do
		local result=`expr ${vector1[i]} + ${vector2[i]}`
		echo "La suma de los elementos de la posicion $i de los vectores es $result"
	done
}

sumar
exit 0
