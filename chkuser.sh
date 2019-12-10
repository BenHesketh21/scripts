#! /bin/bash

echo "What is your user name?"
read user
users="cat /etc/passwd"
try="grep ${user} ${users}"
if [ try  ]
then
	echo "You are logged in"
else
	echo "Nope!"
fi

