#! /bin/bash

cd /home/$(whoami)/to_do_lists
if [ -d "$(date "+%B-%Y")" ]; then
	cd $(date "+%B-%Y")
else
	mkdir $(date "+%B-%Y")
	cd $(date "+%B-%Y")
fi
touch $(date "+%a-%d").md
echo "## Date: $(date "+%D")" >> $(date "+%a-%d").md
echo " " >> $(date "+%a-%d").md
echo "- [ ] Task 1" >> $(date "+%a-%d").md
code $(date "+%a-%d").md
