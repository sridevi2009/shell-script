#!/bin/bash
ID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"

if [ $ID -ne 0 ]
then
   echo -e"$R ERROR: please run this script with root access $N"
   exit 1 #you ca give other than 0
else
   echo "you are root user"
fi

echo "all arguments passed: $@"