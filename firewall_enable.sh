#!/bin/bash
source cecho.sh;
source is_root.sh;
clear;

if (is_root); then

information "🚀 Ativando regras de firewall.";

# Politica default    
echo;
iptables -L -v;

fi