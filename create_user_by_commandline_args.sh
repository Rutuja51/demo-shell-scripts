#! /bin/bash

#Creating user by giving arguments


echo "=========== Creation of user started ========="

sudo useradd -m "$1"

echo -e "$2\n$2" | sudo passwd "$1"

echo "=========== Creation of user completed ======="

#echo "args1 = $1 \n args2 = $2"
#echo "New username added = $1"


