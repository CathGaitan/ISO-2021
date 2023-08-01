#!/bin/bash
usuario=$1
if [ $# -ne 1 ]; then
	echo "Debe ingresar un usuario"
	exit 1
fi
while true; do
	conectado=`who | grep $usuario | cut -d " " -f1 | wc -l`
	if [ $conectado -eq 0 ]; then
		echo "Todavia no inicio $usuario"
		sleep 3 #espera 3 segundos
	else
		echo "Se conecto $usuario"
		break
	fi
done
exit 0
