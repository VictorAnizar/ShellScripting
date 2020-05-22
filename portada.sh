#!/bin/bash
#Portada.sh
#Portada de Prebeshell

trap 'echo "No se detiene"' SIGINT
trap 'echo "No se detiene"' SIGTSTP

source colores.sh

echo -e " ${anaranjado}                  _______________________________   "
echo -e "         _________|                               |________   "
echo -e "         \        |          BIENVENIDO A         |       /   "
echo -e "          \       |                               |      /    "
echo -e "           \      |       LA SUPER PREBESHELL     |     /     "
echo -e "           /      |_______________________________|     \     "
echo -e "          /__________)                        (__________\ ${reset}\n"


