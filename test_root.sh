#! /bin/bash

#Verifica si se esta como usuario root
#Prueba realizada sobre CentOS 6.7 (28/Abr/2016)
#Arquitectura 64 Bits

#tput setaf 1 ---- Muestra texto de color rojo
#tput setaf 2 ---- Muestra texto de color verde 
#tput sgr0    ---- Muestra texto sin color 

#Mediante un condicional y el comando [id -u] muestra el identificador del usuario.
#El identificador cero [0] pertenece al usuario root.
#Verifica si es diferente a Cero(0), si es verdadera muestra mensaje de error de que no es un usuario root.
#Si es falsa, muestra mensaje que es usuario root.
#En cualquiera de las dos condiciones sale del programa si esta se cumple.

if [ "$(id -u)" != '0' ]; then
	echo "[ $(tput setaf 1)Error$(tput sgr 0) ]   Este Script debe ser ejecutado como root"   
	exit 1
else
	echo "[ $(tput setaf 2)OK$(tput sgr 0) ]   Soy usuario root y puedo ejecutar este script" 
    exit 1 
fi
