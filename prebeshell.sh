#!/bin/bash
#prebeshell.sh
#Archivo principal

source colores.sh

if [ $LOGNAME != "root" ]; then
    echo "Please ejecutame como root"
    exit
fi

trap 'echo " Intenta escribiendo salir"' SIGINT
trap 'echo " Intenta escribiendo salir"' SIGTSTP

prev1=$(dpkg --list | grep whois)
prev2=$(dpkg --list | grep mpg123)

if [ -z "$prev1" ]; then 

    echo -e "\n Necesitaremos whois\n"
    read -p "Presione enter para continuar"
    apt-get install whois
    clear
fi

if [ -z "$prev2" ]; then 
    echo -e "\n Necesitaremos mpg123\n"
    read -p "Presione enter para continuar"
    apt-get install mpg123
    clear
fi

echo -n "Ingresa tu usuario: "
read user

. logueo.sh "$user"

. portada.sh


while [ "$opc" != "salir" ]
do 
   
   echo -e -n "${cyan}$user@$PWD:> ${reset}" 
   

   read opc

    case $opc in

         FECHA|fecha)
            . fecha.sh 
        ;;
        
        HORA|hora)
            . hora.sh 
        ;;    
        
        ARBOL|arbol)
            
           . tree.sh 
        ;;

        HELPME| helpme)

            . Ayuda.sh
        ;;

        INFOSIS|infosis)
        
            . infosis.sh $user
        ;;

        SEARCH|search)

            source buscar.sh 
        ;;

        
        PREBEPLAYER|prebeplayer)

            . prebeplayer.sh
        ;;

        CREDITOS|creditos)

            . creditos.sh 
        ;;

        salir) 

            . salir.sh

        ;;

        *) 
             
        ;;  
        
    esac
done
