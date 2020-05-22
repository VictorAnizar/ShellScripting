#!/bin/bash
#prebeshell.sh
#Muestra archivos en una ruta

trap 'echo "No se detiene"' SIGINT
trap 'echo "No se detiene"' SIGTSTP

original=$PWD

function treee1 {
for archivo in $PWD/*
do
	if [ -f "$archivo" ]
	then
		echo "$archivo" | sed -e 's;[^/]*/;|-->;g;' -e 's/-->|/ |/g'
		
	elif [ -d "$archivo" ]
	then 
		echo "$archivo" | sed -e 's;[^/]*/;|-->;g;' -e 's/-->|/ |/g'
		cd "$archivo"
		treee1
	fi
done
}

function treee2 {
for archivo in $dir/*
do

	if [ -f "$archivo" ]
	then
		echo "$archivo" | sed -e 's;[^/]*/;|-->;g;' -e 's/-->|/ |/g'
	elif [ -d "$archivo" ]
	then 
		echo "$archivo" | sed -e 's;[^/]*/;|-->;g;' -e 's/-->|/ |/g'
		cd "$archivo"
		treee1
	fi
done
}

echo  -n "¿Algun directorio en especial? s/n: "
read elec

if [ $elec == "s" ]
then 
	echo -n "Escribe el directorio: "
	read dir
	treee2 
	cd $original
else 
	treee1
	cd $original
fi
