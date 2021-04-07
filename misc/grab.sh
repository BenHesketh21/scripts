#! /bin/bash
echo "Enter website URL:"
read website
curl -s ${website} > temp.txt
if [ -s temp.txt ]
then
	echo "Yes this exists"
else
	echo "Nope this doesn't exist"
fi
rm temp.txt
