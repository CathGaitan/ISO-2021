#!/bin/bash
pila=()
termino=$true
push(){
	pila=($1 "${pila[@]}")
	echo "Se almaceno el elemento $1"
	return 0
}

pop(){
	local borrado=${pila[0]} ##guardo el elemento a borrar
	unset pila[0] ##lo elimino
	echo "Se elimino el elemento $borrado" ##infomo
	pila=(${pila[@]}) ##arreglo el espacio vacio
}

lenght(){
	echo "En la pila hay ${#pila[@]} elementos"
}

print(){
	echo "Pila de elementos: "
	for i in ${pila[@]}; do
		echo $i
	done
}

echo "Hola soy una pila"
while [ termino ]; do
	echo "Eliga lo que quiera hacer"
	select opcion in push pop lenght print salir; do
		case $opcion in
			"push")
				read -p "Escriba el elemento a apilar: " elemento
				push $elemento;;
			"pop")
				pop;;
			"lenght")
				lenght;;
			"print")
				print;;
			"salir")
				exit 0
		esac
	done
done
