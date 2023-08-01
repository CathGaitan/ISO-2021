#!/bin/bash
echo "MENU DE COMANDOS"
nombreEjercicios=`find /home/cath/practicashell-script/ -name "*.sh" | cut -d "/" -f5`
select opcion in $nombreEjercicios salir; do ##Hacerlo con lista manual
	if [ $opcion = "salir" ];then
		exit 0
	else
		./$opcion
	fi
done

