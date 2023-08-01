#!/bin/bash
if [ $# -ne 1 ]; then
	echo "Debe mandar una extension"
	exit 1
fi
usuarios=`cat /etc/passwd | cut -d ":" -f 1,6` ##recorto nombre usuario y su home
echo -n > reporte.txt
for i in $usuarios; do
	user=`echo $i | cut -d ":" -f1`
	home=`echo $i | cut -d ":" -f2`	
	if [ -d "$home" ];then ##busco solo en los usuarios que tienen home
		cantArchivos=`find $home -name "*.$1" 2>/dev/null | wc -l`
		echo "Usuario: $user - Cantidad archivos: $cantArchivos" >> reporte.txt
	fi
done
exit 0

