#! /bin/bash

cd /home/$(whoami)/to_do_lists
if [ -d "$(date "+%B-%Y")" ]; then
	cd $(date "+%B-%Y")
else
	mkdir $(date "+%B-%Y")
	cd $(date "+%B-%Y")
fi
if ! [ -f $(date "+%a-%-d").md ]
then
	echo "Hello"
	touch $(date "+%a-%d").md
	echo "## Date: $(date "+%D")" >> $(date "+%a-%d").md
	echo " " >> $(date "+%a-%d").md
	echo "- [ ] Task 1" >> $(date "+%a-%d").md
elif ! [ -s $(date "+%a-%d").md ]
then
	echo "Hello 2"
	echo "## Date: $(date "+%D")" >> $(date "+%a-%d").md
        echo " " >> $(date "+%a-%d").md
        echo "- [ ] Task 1" >> $(date "+%a-%d").md
fi
code $(date "+%a-%d").md
