#!/bin/bash
#creditos.sh
#creditos

trap 'echo "No se detiene"' SIGINT
trap 'echo "No se detiene"' SIGTSTP

source colores.sh 

echo -e "${azul}\n\n                      == CREDITOS =="
 
echo -e "\n\n         ▂ ▃ ▅ ▆ █ DURÁN GONZÁLEZ LIZETH █ ▆ ▅ ▃ ▂"
 
echo -e "\n\n     ▂ ▃ ▅ ▆ █ GOMEZ MONJARAS DAVID ALEJANDRO █ ▆ ▅ ▃ ▂ "

echo -e "\n\n         ▂ ▃ ▅ ▆ █ ANIZAR MORALES VICTOR █ ▆ ▅ ▃ ▂  "

echo -e "\n\n      ▂ ▃ ▅ ▆ █ FI UNAM    PROTECO GEN 39  █ ▆ ▅ ▃ ▂ \n\n${reset}"
