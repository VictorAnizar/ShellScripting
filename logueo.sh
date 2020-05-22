#!/bin/bash
#logueo.sh
#Permite a los usuarios del so acceder a loguearse a prebeshell.

trap 'echo "No se detiene"' SIGINT
trap 'echo "No se detiene"' SIGTSTP

user=$1

cut -d: -f1 /etc/passwd | grep "$user" > /dev/null
OUT=$?

if [ $OUT -eq 0 ]
then  
  echo -n "Ingrese contraseña: "
  read contras
  
  password=`grep -w "$user" /etc/shadow | cut -d : -f2` #password del usuario
  bitsalt=`grep -w "$user" /etc/shadow | cut -d "$" -f3`  #bitsalt del usuario
  cont1=$(mkpasswd -m sha-512 -S $bitsalt $contras)
  
      if [ "$cont1" == "$password" ]
      
      then 
        clear 
      
      else 
      
        echo "Contraseña incorrecta"
        exit
      fi

else
  echo "El usuario no existe"
  exit
fi

 


