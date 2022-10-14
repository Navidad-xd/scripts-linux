#!/bin/bash
aleatorio=$(($RANDOM % 100 + 1)) 
while true
do
read -p "Introduce un número entre 1 y 100: " numero
conteo=$(($conteo + 1))
if [ "$numero" == "$aleatorio" ]
then
if which cowsay > /dev/null
then
figlet GANASTE!
echo "Número de intentos: $conteo"
else
echo "  ____    _    _   _    _    ____ _____ _____ _
 / ___|  / \  | \ | |  / \  / ___|_   _| ____| |
| |  _  / _ \ |  \| | / _ \ \___ \ | | |  _| | |
| |_| |/ ___ \| |\  |/ ___ \ ___) || | | |___|_|
 \____/_/   \_\_| \_/_/   \_\____/ |_| |_____(_)"
echo "Número de intentos: $conteo"
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
