#!/bin/sh

USAGE="Attention, vous n'avez pas utilisé le script correctement\nIl faut entrer un nom d'utilisateur en argument"
USAGE2="Usage : $0 nom_utilisateur"

if [ $# -ne 1 ]
then
	echo $USAGE2
	exit 1
fi

if grep -q $1 /etc/passwd
then
	echo "L'utilisateur $1 est présent sur la machine"
else
	echo "Pas d'utilisateur $1 sur la machine"
fi


