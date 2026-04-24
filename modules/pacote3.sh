#!/data/data/com.termux/files/usr/bin/bash
read -p "Digite o IP/Host para Auditoria: " alvo
nmap -A -v $alvo
