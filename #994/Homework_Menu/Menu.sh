#!/bin/bash
SCRIPT=""

while true
do
	#echo -e "\033[40m\033[34m MENU \033[0m"
	banner MENU
	
	echo -e "1.-\033[40m\033[1;33m  Hola mundo  \033[0m"
	echo -e "2.-\033[40m\033[1;33m  Hola mundo con variables \033[0m"
	echo -e "3.-\033[40m\033[1;33m  Arbol \033[0m"
	echo -e "4.-\033[40m\033[1;33m  HolaMundo \033[0m"
	echo -e "5.-\033[40m\033[1;33m  Hola mundo con variables \033[0m"
	echo -e "6.-\033[40m\033[1;33m  Variables \033[0m"
	echo -e "7.-\033[40m\033[1;33m  Arrays \033[0m"
	echo -e "8.-\033[40m\033[1;33m  Segundo Array \033[0m"
	echo -e "9.-\033[40m\033[1;33m  Aritmetica \033[0m"
	echo -e "10.-\033[40m\033[1;33m Logicas \033[0m"
	echo -e "11.-\033[40m\033[1;33m Condicionales \033[0m"
	echo -e "12.-\033[40m\033[1;33m SegundoCondicional \033[0m"
	echo -e "13.-\033[40m\033[1;33m Case \033[0m"
	echo -e "14.-\033[40m\033[1;33m Interacciones \033[0m"
	echo -e "15.-\033[40m\033[1;33m While \033[0m"
	echo -e "16.-\033[40m\033[1;33m Until \033[0m"
	echo -e "17.-\033[40m\033[1;33m Select \033[0m"
	echo -e "18.-\033[40m\033[1;33m Funciones \033[0m"
	echo -e "19.-\033[40m\033[1;33m Librerias \033[0m"
	echo -e "20.-\033[40m\033[1;33m Señales \033[0m"
	echo -e "21.-\033[40m\033[1;33m Colores \033[0m"
	echo -e "x.-\033[40m\033[37m Salir \033[0m\n"

	echo -n "Selecciona un Script: "
	read SCRIPT

	case ${SCRIPT} in
		1)
			source Hola_Mundo
			;;
		2) 	
			source Saludo_Con_Variables
			;;
		3)
			source Arbol
			;;
		4)
			source HolaMundo.sh
			;;
		5)
			source HolaMundoConVariables.sh
			;;
		6)
			source Variables.sh
			;;
		7)
			source Arrays.sh
			;;
		8)
			source SegundoArrays.sh
			;;
		9)
			source Aritmetica.sh
			;;
		10)
			source Logicas.sh
			;;
		11)
			source Condicionales.sh
			;;
		12)
			source SegundoCondicional.sh
			;;
		13)
			source Case.sh
			;;
		14)
			source Interacciones.sh
			;;
		15)
			source While.sh
			;;
		16)
			source Until.sh
			;;
		17)
			source Select.sh
			;;
		18)
			source Funciones.sh
			;;
		19)
			source Librerias.sh
			;;
		20)
			source Señales.sh
			;;
		21)
			source Colores.sh
			;;
		x)
			break
			;;
		*)
			echo "Opcion invalida"
	esac
done

