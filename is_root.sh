#!/bin/bash
source cecho.sh;

is_root(){
    if ! [ $(id -u) = 0 ]; then
        error "Você precisa ter permissões de administrador para executar este script.";
        exit 1;
    else
         exit 0;
    fi
       
}