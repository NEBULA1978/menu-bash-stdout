#!/bin/bash

while :; do
    #Menu
    clear
    echo -e "\e[1;32m"
    echo " MENU SCRIPT V.1 "
    echo ""
    echo "1. Mostrar directorio"
    echo "2. Mostrar calendario"
    echo "3. Mostrar dato"
    echo "5. Ver la ruta absoluta de whoami con which"
    echo "6. Ver la ruta absoluta de whoami con command -v"
    echo "7. Ver ruta actual con pwd"
    echo "8. Ver usuarios a nivel de sistema con cat /etc/passwd"
    echo "9. Ver las shell existentes"
    echo "10. Ver los binarios existentes con dolar PATH"
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
        echo "Ver la ruta absoluta de whoami con which"
        which whoami
        read foo
        ;;
    6)
        echo "Ver la ruta absoluta de whoami con command -v"
        command -v whoami
        read foo
        ;;
    7)
        echo "Ver ruta actual con pwd"
        pwd
        read foo
        ;;
    8)
        echo "Ver usuarios a nivel de sistema con cat /etc/passwd"
        cat /etc/passwd
        read foo
        ;;
    9)
        echo "Ver las shell existentes"
        cat /etc/shells
        read foo
        ;;
    10)
        echo "Ver los binarios existentes con dolar PATH"
        echo $PATH
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
