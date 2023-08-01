#!/bin/bash
select eleccion in Listar DondeEstoy QuienEsta Salir; do
	case $eleccion in
		"Listar")
			echo "`ls`";;
		"DondeEstoy")
			echo "`pwd`";;
		"QuienEsta")
			echo "`who`";;
		"Salir")
			exit 0
	esac
done
