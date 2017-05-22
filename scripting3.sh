#!/bin/bash
#
#
USAGE="Usage: $0 nombre1 nombre2"

if [ $# -ne 2 ]
then
        echo "Le nombre d’arguments saisis n’est pas correct"
        echo $USAGE
        exit 1
fi

# test si $1 et $2 sont des nombres
# on vérifie que l’opération arithmétique ne fonctionne pas
expr $1 + $2 >  /dev/null 2>&1
if (($?!=0))
then
        echo "Un des deux arguments n’est pas un nombre"
        exit 2
fi

if [ $1 -eq $2 ]
then
        echo "Les deux nombres sont égaux"
elif [ $1 -lt  $2 ]
then
        echo "$1 est inférieur à $2"
else
        echo "$1 est supérieur à $2"
fi
echo "La somme est: `expr $1 + $2`"
