#!/bin/bash

is_package_installed () {

 package="$1";
 
 dpkg -s $package &> /dev/null;

 if [ $? != 0 ]
    then
        error "Este script requer o pacote '$package'.";
        cecho -n -c "white" "Instale com o comando"; 
        information "'apt install iptables-persistent'.";
        exit 1;
fi
    information "O pacote '$package' foi localizado!";
    exit 0;

}