#!/bin/sh

USAGE2="Usage : $0 start/reload/stop"

if [ $# -ne 1 ]
then
	echo $USAGE2
	exit 1
fi

if [ $1 = "start" ]
then
	echo "Le service va démarrer"

elif [ $1 = "reload" ]
then
	echo "Le service va redémarrer"

elif [ $1 = "stop" ]
then
	echo "Le service va s'arrêter"
else
	echo $USAGE2
fi


