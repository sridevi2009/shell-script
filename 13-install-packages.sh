#!/bin/bash
ID=$(id -u)

if [ $ID -ne 0 ]
then
   echo -e"$R ERROR: please run this script with root access $N"
   exit 1 #you ca give other than 0
else
   echo "you are root user"
fi

echo "all arguments passed: $@"