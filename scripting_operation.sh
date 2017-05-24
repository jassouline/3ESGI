
#!/bin/sh


#Recuperation des paramètres
if [ $# -lt 2 ]
then
        echo "Nombre d'arguments insuffisant"
        echo "Usage : $0 operation nombre1 nombre2 ... nombreN"
        exit 1

else
        operation=$1

        arguments=`expr $# - 1`
echo "Operateur : $operation"
echo "Vous avez entré $arguments nombres"
fi

shift
resultat=$1
while [ $1 ]
do
        resultat=`expr $resultat $operation $1`
        shift
done
echo $resultat
