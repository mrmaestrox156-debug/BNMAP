#!/data/data/com.termux/files/usr/bin/bash
read -p "Digite o IP/Host para Detecção: " alvo
nmap -sV -Pn $alvo
