#!/bin/bash

# Voy por minuto 3

while :; do
    #Menu
    clear
    echo -e "\e[1;32m"
    echo " MENU SCRIPT V.1 "
    echo ""
    echo "1. Mostrar directorio"
    echo "2. Mostrar calendario"
    echo "3. Mostrar dato"
    echo "5. Creamos con el descriptor de archivos un archivo con el nº 3"
    echo "6. Queremos enviar el valor de whoami al archivo3"
    echo "7. Queremos ver el valor del archivo3"
    echo "8. Queremos añadir un append el valor de ls al archivo3"
    echo "9. Queremos cerrar el descriptor de archivos archivo3"
    echo "10. Creamos con el descriptor de archivos un archivo con el nº 5 data"
    echo "11. Queremos enviar el valor de whoami al archivo5 data"
    echo "12. Creamos una copia del nº 5 data sea una copia archivo8 data creado ahora"
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
        echo "Mostrando datos"
        date
        read foo
        ;;
    5)
        echo "Creamos con el descriptor de archivos un archivo con el nº 3 llamado file"
        exec 3<>file
        echo "Vemos el tipo de archivo cin file"
        file file
        echo " si queremos solo lectura un menor, si queremos poder escribir un mayor"
        read foo
        ;;

    6)
        echo "Queremos enviar el valor de whoami al archivo3"
        whoami >&3
        read foo
        ;;
    7)
        echo "Queremos ver el valor del archivo3"
        cat file
        read foo
        ;;
    8)
        echo "Queremos añadir un append el valor de ls al archivo3"
        ls >&3
        echo "vemos archivo3 esta cerado no existe nos dicee al estar cerrado"
        cat file
        read foo
        ;;
    9)
        echo "Queremos cerrar el descriptor de archivos archivo3"
        exec 3>&-
        read foo
        ;;
    10)
        echo "Creamos con el descriptor de archivos un archivo con el nº 5 data"
        exec 5<>data
        read foo
        ;;
    11)
        echo "Queremos enviar el valor de whoami al archivo5 data"
        whoami >&5
        read foo
        ;;
    12)
        echo "Creamos una copia del nº 5 data sea una copia archivo8 data creado ahora"
        whoami 8>&5

        read foo
        ;;

    \
        4) exit 0 ;;
    #Alerta
    *)
        echo "Opcion invalida..."
        sleep 1
        ;;
    esac
done
