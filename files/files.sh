#! /bin/bash
echo "What file do you want to find?"
read filename
where=$(pwd)
who=$(whoami)
cd /home/${who}
value=$(find "$(cd ..; pwd)" -name ${filename})

if [ ${value} ] 
then
	echo "Exists ${value}"
else
	echo "Doesn't Exist"
fi
