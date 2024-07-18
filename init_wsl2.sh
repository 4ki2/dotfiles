#!/bin/sh

### https://docs.microsoft.com/ja-jp/windows/wsl/wsl-config

# echo "[wsl2]\nlocalhostForwarding=true\n" > /mnt/c/Users/${NAME}/.wslconfig

echo "\n[network]\ngenerateResolvConf=false\n" >> /etc/wsl.conf
echo "\n[user]\ndefault=root\n" >> /etc/wsl.conf

