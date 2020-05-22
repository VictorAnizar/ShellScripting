#!/bin/bash

trap 'echo "No se detiene"' SIGINT
trap 'echo "No se detiene"' SIGTSTP

temp1=`mktemp -t temp.XXXXXX`
temp2=`mktemp -t temp2.XXXXXX`
temp3=`mktemp -t temp3.XXXXXX`

function diskspace { #Navegar en la playlist
	Navegacion
}

function Navegacion {
while [ 1 ]
do
        kdialog --title "Prebeplayer" --menu "Navegacion De Playlist" "1" "Avenged Sevenfold-A Little Piece Of Heaven" "2" "Bullet For My Valentine-ALone" "3" "Audioslave-Like a Stone" "4" "Rammstein-Sonne" "0" "Regresar al menu principal" > $temp3
        if [ $? -eq 1 ]
        then
                break
        fi

        selection1=`cat $temp3`

        case $selection1 in
        1)
                mpg123 Playlist/ALittlePieceOfHeaven.mp3 ;;
        2)
                mpg123 Playlist/Alone.mp3 ;;
        3)
                mpg123 Playlist/LikeAStone.mp3 ;;
	4)
		mpg123 Playlist/Sonne.mp3 ;;
        0)
                break ;;
        *)
                kdialog --msgbox "Sorry, invalid selection"
        esac
done

}

function whoseon { #Ayuda
        mpg123 --help > $temp1
        kdialog --textbox $temp1 500 100
}

kdialog --title "Intro" --msgbox "==Bienvenido a la prebeplayer=="
while [ 1 ]
do
	kdialog --menu "Opciones:" "1" "Navegar en la playlist" "2" "Ayuda" "0" "exit" > $temp2
	if [ $? -eq 1 ]
	then
		break
	fi

	selection=`cat $temp2`

	case $selection in
	1)
		diskspace ;;
	2)
		whoseon ;;
	0)
		break ;;
	*)
		kdialog --msgbox "Sorry, invalid selection"
	esac
done
