#! /bin/bash

declare -a november=("QAFlaskApp" "IndividualProjectQA")
while read line
do
    november=("${november[@]}" $line)
done
for name in "${november[@]}"
do
	git clone https://www.github.com/BenHesketh21/${name}.git
	git checkout feature
	cd ${name}
	touch sonar-project.properties
	echo "sonar.projectKey=${name}" > sonar-project.properties
	sonar-scanner
	cd ..
done

