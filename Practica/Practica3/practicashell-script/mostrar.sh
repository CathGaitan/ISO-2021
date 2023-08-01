#!/bin/bash 
#Comentarios acerca de lo que hace el script 
read -p "Introduzca su nombre y apellido:" nombre apellido 
echo "Su apellido y nombre es: $apellido $nombre" 
echo "Su usuario es: `whoami`" 
echo "Su directorio actual es: `pwd`"
echo "Su espacio en disco"
df -h | head -1 && df -h | grep dev/sd
read -p "Nombre del archivo que quiere buscar en su directorio personal: " nombreArchivo
find $HOME -name $nombreArchivo
read -p "Path absoluto del directorio que quiere ver sus elementos: " pathDirectorio
ls $pathDirectorio
