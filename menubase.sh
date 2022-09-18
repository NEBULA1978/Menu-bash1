#!/bin/bash

while :; do
    #Menu
    clear
    echo -e "\e[1;32m"
    echo " MENU SCRIPT V.1 "
    echo ""
    echo "1. Mostrar directorio"
    echo "2. Mostrar calendario"
    echo "3. Mostrar directorios de la raiz / con ls /"
    echo "5. Crear directorios dentro de otros directorios"
    echo "6. Borrame no dir1 sino fotos(dentro de dir1)"
    echo "7. Con rm borra ficheros y rm -r directorios"
    echo "8. Ver informacion de espacio ocupado en home"
    echo "9. Saber cuanto estan ocupando todos los elementos de la raiz del sistema con du -hs /*"
    echo "10. Ver informacion con df nos muestra el espacio de todos los elementos de la raiz de la sistema con df"
    echo "11.  Ver informacion con df -h / | nos muestra el espacio de todos los elementos de la raiz de la sistema"
    echo "12.  Ver informacion con df -h / | nos muestra el espacio de la directorio actual"
    echo "13.  Si pongo du nos muestra el tamaño de la directorio actual y nos muestra todos los archivos ocultos"
    echo "14.  Si pongo du -sh . | nos muestra el tamaño de la directorio actual y nos muestra todos los archivos ocultos"
    echo "15.  Si pongo du -sh * | sort -h :nos muestra el tamaño de todos los directorios ordenados de menor a mayor"
    echo "4. Salir"
    echo ""
    #Escoger menu
    echo -n "Escoger opcion: "
    read opcion
    #Seleccion de menu
    case $opcion in
    1)
        echo "Mostrando directorio"
        ls
        read foo
        ;;
    2)
        echo "Mostrando calendario"
        cal
        read foo
        ;;
    3)
        echo "Mostrar directorios de la raiz /"
        ls /
        read foo
        ;;
    5)
        echo "Crear directorios dentro de otros directorios"
        mkdir -p dir1/fotos
        read foo
        ;;
    6)
        echo "Borrame no dir1 sino fotos(dentro de dir1)"
        rmdir -p dir1/fotos/
        read foo
        ;;
    7)
        echo "Con rm borra ficheros y rm -r directorios"
        echo 'rm -p dir1/fotos/'
        read foo
        ;;
    8)
        echo "Ver el espacio ocupado en home"
        df -h /home/
        read foo
        ;;
    9)
        echo "Saber cuanto estan ocupando todos los elementos de la raiz del sistema"
        du -hs /*
        read foo
        ;;
    10)
        echo "Ver informacion con df nos muestra el espacio de todos los elementos de la raiz de la sistema"
        df
        read foo
        ;;
    11)
        echo "Ver informacion con df -h / | nos muestra el espacio de todos los elementos de la raiz de la sistema"
        df -h /
        read foo
        ;;
    12)
        echo "Ver informacion con df -h / | nos muestra el espacio de la directorio actual"
        df -h .
        read foo
        ;;
    13)
        echo "Si pongo du nos muestra el tamaño de la directorio actual y nos muestra todos los archivos ocultos"
        du
        read foo
        ;;
    14)
        echo "Si pongo du -sh . | nos muestra el tamaño de la directorio actual y nos muestra todos los archivos ocultos"
        du -sh .
        read foo
        ;;
    15)
        echo "Si pongo du -sh * | sort -h :nos muestra el tamaño de todos los directorios ordenados de menor a mayor"
        du -sh * | sort -h
        read foo
        ;;
    4) exit 0 ;;
    #Alerta
    *)
        echo "Opcion invalida..."
        sleep 1
        ;;
    esac
done
