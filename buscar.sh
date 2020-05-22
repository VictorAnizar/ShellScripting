#!/bin/bash
#prebeshell.sh
#Busca un archivo en una ruta indicada

trap 'echo "No se detiene"' SIGINT
trap 'echo "No se detiene"' SIGTSTP

read -p "   Dime el nombre del archivo a buscar:  " B
read -p "   Dime la ruta en la que buscare: " R
comb=$R"/"$B
#`cd R`

function Buscar {
for archivo in $R/*
do

        if [ -f "$archivo" ]
        then
      		    if [ "$comb" = "$archivo" ]
		        then
			        echo "El archivo existe en la ruta indicada."
				return
		         fi
        else 
            echo "No existe el archivo"
            return
        fi
done
}

if [ -d $R ]
then
	`cd $R`
	Buscar
else
	echo "No es un directorio o no esta bien escrita la ruta"
fi
