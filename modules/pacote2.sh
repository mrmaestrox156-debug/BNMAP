#!/usr/bin/env bash
read -p "Digite o IP/Host para Detecção: " alvo
nmap -sV -Pn $alvo
