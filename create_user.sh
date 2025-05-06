
#! /bin/bash

#This is creat euser shell script

echo "==========  Creation of User Statrted ==========="

read -p "Enter the username" username

read -p "Enter the password" password

sudo useradd -m "$username"

echo -e "$password\n$password" | sudo passwd "$username"

echo "========== Creation of user completed ========="
