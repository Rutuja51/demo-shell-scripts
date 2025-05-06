#!/bin/bash

<<info
This is an explaination of functions
info

#function for create user
function create_user {
read -p "Enter username: " username
read -p "Enter password: " password
sudo useradd -m $username

echo -e "$password\n$password" | sudo passwd "$username"

echo "User created successfully"

}

for (( num=1; num<4; num++))
do
	create_user
done
