#!/bin/bash
LocalVersion=$(cat /root/versi)
Version=$(curl -sS https://raw.githubusercontent.com/FranataVPN/Franata775.com/vvip/update/versinew | awk '{print $1}')
if [ $LocalVersion = $Version ]; then
echo -e "\e[32mScript Sudah Versi Terbaru...\e[0m"
else
echo -e "\e[32mAda Update Script!!\e[0m";
wget -q -O updateyes.sh https://raw.githubusercontent.com/FranataVPN/Franata775.com/ipuk/update/updateyes.sh && chmod +x updateyes.sh && ./updateyes.sh
rm -f updateyes.sh
fi
