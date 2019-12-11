#! /bin/bash

echo "Name of file?"
read name
echo "Title?"
read title
cd /home/ubuntu/trainer_meetings
touch ${Name}.md
echo "## ${title}-$(date "+%d-%m-%y")" >> ${name}.md

