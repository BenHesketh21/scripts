#! /bin/bash

PKG_OK=$(dpkg-query -W --showformat='${Status}\n' mysql-server|grep "install ok installed")

if [ "" == "$PKG_OK" ]
then
	sudo apt update && sudo apt install mysql-server -y
	sudo mysql_secure_installation
else
	echo "Already Installed, smashing"
fi

sudo mysql



