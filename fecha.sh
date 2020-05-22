#!/bin/bash
#prebeshell.sh
#Muestra la fecha

trap 'echo "No se detiene"' SIGINT
trap 'echo "No se detiene"' SIGTSTP

source colores.sh

touch fecha
fecha=`stat fecha | grep "Cambio:" | sed 's/\s\+/,/g' | cut -d , -f3 `

echo -e " ${anaranjado}         __^__                                      __^__ "
echo -e "         ( ___ )------------------------------------( ___ )  "
echo -e "          | / |                                      | \ |  "
echo -e "          | / |    La fecha de hoy es $fecha     | \ | "
echo -e "          |___|                                      |___| "
echo -e "         (_____)------------------------------------(_____)  ${reset}"

rm fecha
