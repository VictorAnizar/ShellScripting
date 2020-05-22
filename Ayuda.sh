#!/bin/bash
#Ayuda.sh
#info acerca de los comandos y uso de la terminal

source colores.sh 
clear 


trap 'echo "No se detiene"' SIGINT
trap 'echo "No se detiene"' SIGTSTP

echo -e "${azul}                               ......               "
echo -e "                            .:||||||||:.            "
echo -e "                           /            \           "
echo -e "                          (   o      o   )          "
echo -e "                --@@@@----------:  :----------@@@@--${reset}"
echo
echo -e "Holi. Presta atención, te explicare como funciona la Super Prebeshell."
echo -e "\nNuestra super prebeshell cuenta con un super potencial para ser la nueva revelación 2019. "

echo -e "\nPara probar los nuevos comandos tienes 2 opciones de escribirlos."
echo -e "Te incluimos una breve descripción de cada uno para que los aproveches al máximo."

echo -e "${verde} \n FECHA | fecha ${reset}"
echo "Aqui podras ver la fecha del día de hoy"
echo "en formato aaaa-mm-dd"
echo
echo -e "${verde}  HORA | hora ${reset}"
echo "Aqui podras ver la hora actual en formato hh:mm:ss"
echo
echo -e "${verde}  ARBOL | arbol ${reset}"
echo "Se muestran los archivos en una ruta"
echo "Si no se especifica cual, sera la ruta actual"
echo
echo -e "${verde}  HELPME | helpme${reset}"
echo "Para estar leyendo esto, ya sabras que hace este comando."
echo
echo -e "${verde}  INFOSIS | infosis ${reset}"
echo "Proporciona informacion valiosa acerca del sistema."
echo
echo -e "${verde} SEARCH | search ${reset}"
echo "Busca un archivo dentro de algun directorio"
echo "Asegurate de indicar bien la ruta."
echo
echo -e "${verde}  GAMES | games ${reset}"
echo "Hay 2 opciones de juego: Ahorcado y tictac"
echo "Elige tu favorito :)"
echo
echo -e "${verde} PREBEPLAYER | PrebePlayer ${reset}"
echo "Reproductor de música personalizado"
echo
echo -e "${verde} CREDITOS | creditos ${reset}"
echo "Nombre de los creadores de tan besha prebeshell"
echo
