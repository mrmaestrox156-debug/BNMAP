#!/usr/bin/env bash

# Função da Barra de Carregamento
loading_bar() {
    local duration=$1
    echo -n "Carregando Módulos: ["
    for i in {1..30}; do
        sleep $(echo "scale=3; $duration/30" | bc)
        echo -n "█"
    done
    echo "] 100%"
}

clear
# Seu Banner BNMAP
echo -e "\e[1;37m"
echo "██████╗ ███╗   ██╗███╗   ███╗ █████╗ ██████╗ "
echo "██╔══██╗████╗  ██║████╗ ████║██╔══██╗██╔══██╗"
echo "██████╔╝██╔██╗ ██║██╔████╔██║███████║██████╔╝"
echo "██╔══██╗██║╚██╗██║██║╚██╔╝██║██╔══██║██╔═══╝ "
echo "██████╔╝██║ ╚████║██║ ╚═╝ ██║██║  ██║██║     "
echo "╚═════╝ ╚═╝  ╚═══╝╚═╝     ╚═╝╚═╝  ╚═╝╚═╝     "
echo "                                version 1.2. "
echo "     * :------------------------------------: *"
echo "     * #   .=-----:--         -===+++++++-  # *"
echo "     * #     ==----::=+++++++=-:==+++++++:  # *"
echo "     * #      :=----:=+++++++=..-==+++++-   # *"
echo "     * #        -=----+++++++-:-:-==+++:    # *"
echo "     * #         ::-==+++++++==-:::...      # *"
echo "     * #        .===============-::         # *"
echo "     * #        :==:.  -====.  .==-         # *"
echo "     * #        .==:   .===:   .-==::       # *"
echo "     * #         -==--==-====--======+      # *"
echo "     * #   .---- .-==++.:=+:====---==..:    # *"
echo "     * # :==+++===-.-===-=+-==-.:-===..:+:  # *"
echo "     * %---========-:...--=:...:::=-..:=++: # *"
echo "     * #......::--==::::-=+:::..:-=---=++++-# *"
echo "     * # :=+++++==-::..:--===-.:::-=-::-+++:# *"
echo "     * #-=+++++++==-::.--==+++++=::- .:::...# *"
echo "     * %==+++++++===-..=:--=++=-:::-..::::-=% *"
echo "     * %===++++++====..=--:-====::::- :::-++% *"
echo "     * %===++++++====..+:-+++++=::::- :::=+:# *"
echo "     * %===++++++====:.+=::--==--:::-:.:-+: # *"
echo "     * #.=-::::.:::-=:.+++=--:---:::-::-+=. # *"
echo -e "\e[0m"

echo "----------------------------------------------"
echo " [ INSTRUÇÕES ]: Escolha um pacote e insira o IP"
echo " ou Host de destino para iniciar a análise."
echo "----------------------------------------------"
echo "1) Pacote: SCAN RÁPIDO (Portas comuns)"
echo "2) Pacote: DETECÇÃO (Versões e Serviços)"
echo "3) Pacote: AUDITORIA (Scan Completo + OS)"
echo "4) Sair"
echo "----------------------------------------------"
read -p "Selecione o comando: " opt

case $opt in
    1)
        read -p "Alvo: " alvo
        loading_bar 1
        nmap -T4 -F $alvo
        ;;
    2)
        read -p "Alvo: " alvo
        loading_bar 2
        nmap -sV -Pn $alvo
        ;;
    3)
        read -p "Alvo: " alvo
        loading_bar 3
        nmap -A $alvo
        ;;
    4)
        exit
        ;;
    *)
        echo "Opção inválida."
        ;;
esac
