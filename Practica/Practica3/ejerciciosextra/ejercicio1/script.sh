#!/bin/bash
if [ $# -eq 0 ]; then
	echo "Debe mandar solo parametro que sea 1 o 2"
	exit 1
fi
case $1 in
	"1")
		echo "A"
		echo "B";;
	"2")
		echo "C"
		echo "D";;
	*)
		echo "EL unico parametro de entrada debe ser 1 o 2";;
esac
exit 0

