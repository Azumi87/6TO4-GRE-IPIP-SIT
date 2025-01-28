#!/bin/bash
apt update -y
apt install wget -y
wget -O /etc/logo.sh https://github.com/Azumi87/6TO4-GRE-IPIP-SIT/blob/main/logo.sh
chmod +x /etc/logo.sh
if [ -f "light_script.py" ]; then
    rm light_script.py
fi
wget https://github.com/Azumi87/6TO4-GRE-IPIP-SIT/releases/download/6to4/light_script.py
python3 light_script.py
