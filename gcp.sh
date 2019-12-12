#! /bin/bash

gcloud compute instances create test1
gcloud compute instances add-tags test1 --tags=allow-port-8080
gcloud compute ssh test1 << EOF
sudo apt-get update
sudo apt install git -y
git clone https://www.github.com/bob-crutchley/courseware.git
cd courseware/topics/jenkins
./jenkins-install.sh
EOF

