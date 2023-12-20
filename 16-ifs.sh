#!/bin/bash

file=/etc/passwd

R="\e[31m"
G="\e[31m"
Y="\e[33m"
N="\e[0m"

if [ ! -f $SOURCE_DIR ]
then
  echo -e "$R source directory: $file does not exists.$N"

fi

while IFS=":" read -r username password user_id group_id user_fullname home_dir shell_path
do
  echo "username: $username"
  echo "user id: $user_id"
  echo "user full name: $user_fullname"
done < $file  
