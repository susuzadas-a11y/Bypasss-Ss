#!/data/data/com.termux/files/usr/bin/bash

echo "=============================="
echo "   STEALTH HIDE SYSTEM"
echo "=============================="
echo ""

# Apps
VPN="com.india.vpn"
BREVENT="me.piebridge.brevent"
FFMAX="com.dts.freefiremax"

echo "[+] Desativando apps..."

pm disable-user --user 0 "$VPN"
pm disable-user --user 0 "$BREVENT"
pm disable-user --user 0 "$FFMAX"

echo "[✓] Apps ocultados do launcher"

echo ""
echo "[+] Tentando ocultar mídia (nomedia)..."

# Pastas comuns (podem ou não existir)
DIR1="/sdcard/Android/data/$VPN"
DIR2="/sdcard/Android/data/$BREVENT"
DIR3="/sdcard/Android/data/$FFMAX"

for dir in "$DIR1" "$DIR2" "$DIR3"
do
  if [ -d "$dir" ]; then
    touch "$dir/.nomedia"
    echo "[✓] .nomedia criado em $dir"
  else
    echo "[!] Pasta não encontrada: $dir"
  fi
done

echo ""
echo "[✔] Processo concluído"
echo "OBS: arquivos NÃO foram escondidos do sistema, apenas da galeria"