#!/bin/bash
read -p "Escriba dos numeros para realizar las cuentas: " num1 num2
echo "suma: `expr $num1 + $num2`"
echo "resta: `expr $num1 - $num2`"
echo "multiplicacion: `expr $num1 \* $num2`"
echo "division: `expr $num1 / $num2`"
if [ $num1 -gt $num2 ]; then
	echo "El numero mas grande es $num1"
else 
	echo "El numero mas grande es $num2"
fi
