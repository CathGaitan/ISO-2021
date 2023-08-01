#!/bin/bash
numeros=(4 5 6 7 8 10 45)
pares=()
impares=0

recorrer(){
	for i in ${numeros[@]};do
		if [ `expr $i % 2` -eq 0 ];then
			pares=("${pares[@]}" $i)
		else
			impares=`expr $impares + 1`
		fi
	done
}

recorrer
echo "PARES: ${pares[@]}"
echo "Cantidad de IMPARES: $impares"
exit 0
