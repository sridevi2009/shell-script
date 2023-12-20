#!/bin/bash

DISK_USAGE=$(df -hT | grep -vE 'tmp|file')
DISK_THRESHOLD=1
message=""

while IFS= read line
do
   usage=$(echo $line | awk '{print $6F}' | cut -d % -f1)
   partition=$(echo $line | awk '{print $1F}')
   if [ $usage -ge $DISK_THRESHOLD ]
   then
       message+="high disk usage on $partition: $usage\n"
    fi   
done <<< $DISK_USAGE

echo -e "message: $message"

echo "$message" | mail -s "high disk usage" info@joindevops.com

sh mail.sh "devops team" "high disk usage" "$message" "info@joindevops.com" "alert high disk usage"