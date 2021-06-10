#!/bin/bash
source cecho.sh;
source is_root.sh;
source is_package_installed.sh;
clear;

if (is_root); then

    if (is_package_installed "iptables-persistent"); then
    
    # Limpar todas as regras
    cecho -c "yellow" "💦 Limpando regras de firewall.";
    iptables -F;
    iptables -X;

    # Politica default
    cecho -c "yellow" "💬 Aplicando política default.";
    echo;
    iptables -P INPUT ACCEPT;
    iptables -P OUTPUT ACCEPT;
    iptables -P FORWARD ACCEPT;

    iptables -L;

    iptables-save > /etc/iptables/rules.v4;

    fi
fi