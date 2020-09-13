#!/bin/bash

function editconfig {
    
	sed -i "s/$1/$2/g" $3
}

echo "Please change inputs - 5s"

sleep 5

editconfig "ServerName=asdfasdf" "ServerName=test" /opt/kf2/KFGame/Config/LinuxServer-KFGame.ini
editconfig "GameLength=1" "GameLength=2" /opt/kf2/KFGame/Config/LinuxServer-KFGame.ini
editconfig "AdminPassword=asdfasdf" "AdminPassword=test" /opt/kf2/KFGame/Config/LinuxServer-KFGame.ini
editconfig "GamePassword=asdfasdf" "GamePassword=test" /opt/kf2/KFGame/Config/LinuxServer-KFGame.ini

editconfig "bEnabled=false" "bEnabled=true" /opt/kf2/KFGame/Config/KFWeb.ini
