#!/bin/bash
num=(10 3 5 7 9 3 5 4)

productoria(){
	local result=1
	for i in ${num[@]};do
		result=`expr $result \* $i`
	done
	echo "El resultado es $result"
}

productoria
exit 0
