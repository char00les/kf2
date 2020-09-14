#!/bin/bash

function editconfig {
    
	sed -i "s/$1/$2/g" $3
}

echo "Please change inputs - 5s"

sleep 5


servername=
gamelength=2
adminpassword=
gamepassword=
enablewebconsole=true

editconfig "ServerName=Killing Floor 2 Server" "ServerName=$servername" /opt/kf2/KFGame/Config/LinuxServer-KFGame.ini
editconfig "GameLength=1" "GameLength=$gamelength" /opt/kf2/KFGame/Config/LinuxServer-KFGame.ini
editconfig "AdminPassword=" "AdminPassword=$adminpassword" /opt/kf2/KFGame/Config/LinuxServer-KFGame.ini
editconfig "GamePassword=" "GamePassword=$gamepassword" /opt/kf2/KFGame/Config/LinuxServer-KFGame.ini

editconfig "bEnabled=false" "bEnabled=$enablewebconsole" /opt/kf2/KFGame/Config/KFWeb.ini

