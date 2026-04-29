#!/data/data/com.termux/files/usr/bin/bash

clear
echo "=============================="
echo "     SS HIDER MENU"
echo "=============================="
echo ""
echo "1 - ATIVAR OCULTAÇÃO"
echo "2 - DESATIVAR OCULTAÇÃO"
echo "3 - SAIR"
echo ""
read -p "Escolha: " opcao

# Apps
VPN="com.india.vpn"
BREVENT="me.piebridge.brevent"
FFMAX="com.dts.freefiremax"

ativar() {
    pm disable-user --user 0 "$VPN"
    pm disable-user --user 0 "$BREVENT"
    pm disable-user --user 0 "$FFMAX"
    echo "[✓] Ocultação ativada"
}

desativar() {
    pm enable "$VPN"
    pm enable "$BREVENT"
    pm enable "$FFMAX"
    echo "[✓] Ocultação desativada"
}

if [ "$opcao" = "1" ]; then
    ativar
elif [ "$opcao" = "2" ]; then
    desativar
else
    echo "Saindo..."
fi
