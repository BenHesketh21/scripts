#! /bin/bash

cd /home/ubuntu
mkdir exercise-upper
cd exercise-upper
mkdir exercise-lower
cd exercise-lower
touch test1.txt
touch test2.txt
mv test1.txt /home/ubuntu/exercise-upper
mv test2.txt test2.sh
echo "#! /bin/bash" >> test2.sh
echo "pwd" >> test2.sh
echo "whoami" >> test2.sh
chmod +x test2.sh
./test2.sh
