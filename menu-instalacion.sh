#!/bin/bash
opcion=0
     echo ""
    while [ $opcion -ne 4 ]
        do
        if which cowsay > /dev/null
        then
            echo "1. Desinstalar cowsay"
        else
            echo "1. Instalar cowsay"
        fi
        if which sl > /dev/null
        then
            echo "2. Desinstalar sl"
        else
            echo "2. Instalar sl"
        fi
        if which ifconfig > /dev/null
        then
            echo "3. Desinstalar net-tools"
        else
             echo "3. Instalar net-tools"
        fi
             echo "4. Salir"
            echo ""


    read -p "Elija una opción: " opcion
        while [ -z $opcion ]
        do
                read -p "Elija una opción: " opcion
            done
    case "$opcion" in
    1)
    if which cowsay > /dev/null
    then
        echo "Ha decidido desinstalar cowsay"
        echo ""
        echo ""
        sudo apt remove -y cowsay
    else
        echo "Ha decidido instalar cowsay"
        echo ""
        echo ""
        sudo apt install -y cowsay
    fi
    ;;

    2)
    if which sl > /dev/null
    then
        echo "Ha decidido desinstalar sl"
        echo ""
        echo ""
        sudo apt remove -y sl
    else
        echo "Ha decidido instalar sl"
        echo ""
        echo ""
        sudo apt install -y sl
    fi
    ;;

    3)
    if which ifconfig > /dev/null
    then
        echo "Ha decidido desinstalar net-tools"
        echo ""
        echo ""
        sudo apt remove -y net-tools
    else
        echo "Ha decidido instalar net-tools"
        echo ""
        echo ""
        sudo apt install -y net-tools
    fi
    ;;
    4)
    exit 1
    ;;
    *)
        echo ""
        echo ""
        echo "Opción incorrecta"
        echo ""
        echo ""
    esac

done