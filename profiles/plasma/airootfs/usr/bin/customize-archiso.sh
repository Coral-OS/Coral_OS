#!/bin/bash

# Ativa NetworkManager na ISO (live boot)
ln -sf /usr/lib/systemd/system/NetworkManager.service /etc/systemd/system/multi-user.target.wants/NetworkManager.service

# Executa o comando pacman-key para inicilizar as chaves do gerenciamento pacman
pacman-key --init

# Executa o comando locale-gen para gerar as configurações de localização
locale-gen
# HABILITA O SDDM para o Plasma
systemctl enable sddm.service

# Habilita o BLuetooth
systemctl enable bluetooth
#

#Habilita snapd
systemctl enable snapd.socket

#
