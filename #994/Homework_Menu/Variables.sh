#!/bin/bash
#Muestra el uso de variables
#No existen los tipos
#Definicion de variables

una_variable=123
MI_NOMBRE="Brayn"
NOMBRES="Brayn Sahagun"
BOOLEANO=true

echo "Echemos un ojo a las variables"
echo "Un número: ${una_variable}
echo "Un nombre: ${MI_NOMBRE}
echo "Un grupo de nombres: ${NOMBRES}

#Al script se le pueden pasar argumentos. Para recogerlos hay que usar: ${numero} donde:
#${0}: nombre del script
#${1}: primer argumento
#${2}: segundo argumento
#...etc

echo "Has invocado el script pasandome ${0} eta ${1}"

#Otras variables especiales
# $#: Numero de argumentos
echo "Me has pasado $# argumentos"

# $@: grupo de parametros del script
echo IDa: $(!) y $@

#Variables de entorno
echo "Mi directorio actual: ${PWD} y mi usuario ${UID}"
