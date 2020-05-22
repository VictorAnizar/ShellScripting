#!/bin/bash
#infosis.sh
#info del sistema 

trap 'echo "No se detiene"' SIGINT
trap 'echo "No se detiene"' SIGTSTP

source colores.sh  

Usuario=$(whoami)
Arquitectura=$(uname -m )
RamMemory=$(free -m -h)
VersionSO=$(cat /etc/issue)
Total=$(cat /proc/meminfo )

echo -e "\n            INFORMACION DEL SISTEMA"
echo
echo -e "${azul}=================================================== ${reset}"
echo 
echo -e -n "Usuario logueado: "
echo $Usuario
echo 
echo -e "${azul}=================================================== ${reset}"
echo
echo "Memoria RAM:"
echo $RamMemory
echo -e "${azul}=================================================== ${reset}"
echo
echo -n "Arquitectura del sistema: "
echo $Arquitectura
echo 
echo -e "${azul}===================================================== ${reset}"
echo
echo -n "Sistema operativo: "
echo $VersionSO
echo
echo -e "${azul}===================================================== ${reset}"
