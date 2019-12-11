#! /bin/bash

echo "Name of file?"
read name
echo "Title?"
read title
cd /home/ubuntu/trainer_meetings
if [ -d "$(date "+%B-%y")" ]; then
	cd $(date "+%B-%Y")
else
	mkdir $(date "+%B-%Y")
	cd $(date "+%B-%Y")
fi
touch ${Name}.md
echo "## ${title} Date:$(date "+%D")" >> ${name}.md
vim ${name}.md
