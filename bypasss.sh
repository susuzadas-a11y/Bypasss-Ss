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

# PACOTES CORRETOS
BREVENT="me.piebridge.brevent"
FFMAX="com.dts.freefiremax"

# ⚠️ VPN varia de aparelho (ajuste se necessário)
VPN="com.india.vpn"

ativar() {
    echo ""
    echo "[+] Ativando ocultação..."
    echo ""

    pm disable-user --user 0 "$BREVENT" 2>/dev/null
    pm disable-user --user 0 "$FFMAX" 2>/dev/null
    pm disable-user --user 0 "$VPN" 2>/dev/null

    echo "[✓] Brevent ocultado"
    echo "[✓] Free Fire MAX ocultado"
    echo "[✓] VPN (se existir) ocultada"
    echo ""
}

desativar() {
    echo ""
    echo "[+] Desativando ocultação..."
    echo ""

    pm enable "$BREVENT" 2>/dev/null
    pm enable "$FFMAX" 2>/dev/null
    pm enable "$VPN" 2>/dev/null

    echo "[✓] Apps reativados"
    echo ""
}

case "$opcao" in
    1)
        ativar
        ;;
    2)
        desativar
        ;;
    *)
        echo "Saindo..."
        ;;
esac
