#!/bin/sh

### https://docs.microsoft.com/ja-jp/windows/wsl/wsl-config

echo "[wsl2]\nlocalhostForwarding=true\n" > /mnt/c/Users/${NAME}/.wslconfig
echo "[interop]\nappendWindowsPath=true\n" > /etc/wsl.conf
echo "[user]\ndefault=root\n" >> /etc/wsl.conf
