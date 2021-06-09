#!/bin/bash
source cecho.sh
clear;

if ! [ $(id -u) = 0 ]; then
   error "Você precisa ter permissões de administrador para executar este script."
   exit 1
fi

dpkg -s iptables-persistent &> /dev/null;

if [ $? != 0 ]
then
    error "Este script requer o pacote iptables-persistent.";
    cecho -n -c "white" "Instale com o comando"; 
    information "'apt install iptables-persistent'.";
    exit 1
fi

# Limpar todas as regras
warning "Limpando regras de firewall."
iptables -F
iptables -X

# Politica default
warning "Aplicando política default."
echo
iptables -P INPUT ACCEPT
iptables -P OUTPUT ACCEPT
iptables -P FORWARD ACCEPT

iptables -L
