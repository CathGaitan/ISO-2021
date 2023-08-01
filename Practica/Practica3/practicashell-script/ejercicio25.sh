#!/bin/bash
users=(`getent group users | cut -d ":" -f 4 | tr -s "," " "`)
indice=`expr ${#users[@]} - 1`

if [ "$1" = "-b" ];then
	if [ "$2" -le $indice ];then
		echo ${users[$2]}
	else
		echo "Error: no existe esa posicion"
		exit 1
	fi
fi

if [ "$1" = "-l" ];then
	echo "Cantidad de usuarios: ${#users[@]}"
fi

if [ "$1" = "-i" ];then
	echo "users: ${users[@]}"
fi
exit 0


