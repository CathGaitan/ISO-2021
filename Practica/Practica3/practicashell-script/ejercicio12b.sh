#!/bin/bash
if [ $# -ne 2 ]; then
	echo "Debe mandar dos numeros"
	exit 1
fi
echo "suma: `expr $1 + $2`"
echo "resta: `expr $1 - $2`"
echo "multiplicacion: `expr $1 \* $2`"
echo "division: `expr $1 / $2`"
if [ $1 -gt $2 ]; then
	echo "El numero mas grande es $1"
else 
	echo "El numero mas grande es $2"
fi
exit 0
