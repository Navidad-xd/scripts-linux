#!/bin/bash
aleatorio=$(($RANDOM % 100)) 
while true
do
read -p "Introduce un número entre 1 y 100: " numero
conteo=$(($conteo + 1))
if [ "$numero" == "$aleatorio" ]
then
echo "Has acertado"
echo "El número de intentos es de $conteo"
exit 1
else
if [ "$numero" -gt "$aleatorio" ]
then
echo "El número es menor"
else
echo "El número es mayor"
fi
fi
done
