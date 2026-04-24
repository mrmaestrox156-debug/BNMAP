#!/usr/bin/env bash
read -p "Digite o IP/Host para Auditoria: " alvo
nmap -A -v $alvo
