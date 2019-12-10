#! /bin/bash

cd /home/ubuntu
mkdir excercise
cd excercise
touch test1.txt
touch test2.txt
mv test1.txt ./..
mv test2.txt test2.sh
echo "#! /bin/bash" >> test2.sh
echo "pwd" >> test2.sh
echo "whoami" >> test2.sh
sudo chmod +x test2.sh
./test2.sh
