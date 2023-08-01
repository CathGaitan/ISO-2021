#!/bin/bash
if [ $# -ne 3 ]; then
	echo "Debe mandar el operador y dos numeros"
	exit 1
fi
case $1 in
	"+")
  	  echo "suma: `expr $2 + $3`";;	
	"-")
    	  echo "resta: `expr $2 - $3`";;
	'*')
    	  echo "multiplicacion: `expr $2 \* $3`";;
	"/")
  	  echo "division: `expr $2 / $3`";;
	*)
    	  echo "No es un operador valido";;
esac
if [ $2 -gt $3 ]; then
	echo "El numero mas grande es $2"
else 
	echo "El numero mas grande es $3"
fi
exit 0
