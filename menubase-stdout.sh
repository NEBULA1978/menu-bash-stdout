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
    echo "5. Introducir varios comandos en una linea con ;"
    echo "6. Comando and solo se ejecuta si el primer comando es exitoso"
    echo "7. Abrimos archivo cat /etc/hosts y vemos si es exitosa su ejecucion"
    echo "8. Comando or solo se ejecuta si el primer comando no es exitoso"
    echo "9. Dirigir errores al stder al dev/null para no verlos por consola"
    echo "10. Dirigir errores y el stdout al stder al dev/null para no verlos por consola"
    echo "11. Otra forma de dirigir errores y el stdout al stder al dev/null para no verlos por consola"
    echo "12. Abrimos firefox dese consola como proceso hijo,si cierrro consola cierro firefox "
    echo "13. Abrimos firefox dese consola como proceso hijo,si cierrro consola cierro firefox independiente"

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
        echo "Introducir varios comandos en una linea con ;"
        whoami
        ls
        whoami
        read foo
        ;;
    6)
        echo "Comando and solo se ejecuta si el primer comando es exitoso"
        whoami && ls
        read foo
        ;;
    7)
        echo "Abrimos archivo cat /etc/hosts y vemos si es exitosa su ejecucion"
        echo " cero es correctamente u 1 no exitoso un error del ultimo comando"
        cat /etc/hosts
        echo $?
        read foo
        ;;
    8)
        echo "Comando or solo se ejecuta si el primer comando no es exitoso"
        whom || ls
        read foo
        ;;
    9)
        echo "Dirigir errores al stder al dev/null para no verlos por consola"
        echo " el stderr es el numero 2"
        whoam >2/dev/null
        read foo
        ;;
    10)
        echo "Dirigir errores y el stdout al stder al dev/null para no verlos por consola"
        whoam >/dev/null 2>&1
        read foo
        ;;
    11)
        echo "Otra forma de dirigir errores y el stdout al stder al dev/null para no verlos por consola"
        cat /etc/host &>/dev/null
        read foo
        ;;
    12)
        echo "Abrimos firefox dese consola como proceso hijo,si cierrro consola cierro firefox"
        firefox &>/dev/null &
        read foo
        ;;
    13)
        echo "Abrimos firefox dese consola como proceso hijo,si cierrro consola cierro firefox independiente"
        firefox &>/dev/null &
        disown
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
