#!/bin/bash

#Other option 
#curl -sqL "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz" | tar zxvf -

sudo apt update && sudo apt upgrade
sudo apt install software-properties-common
sudo add-apt-repository multiverse
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install lib32gcc1 steamcmd

sudo adduser steam

sudo mkdir /opt/kf2/
sudo chown steam:steam /opt/kf2/

