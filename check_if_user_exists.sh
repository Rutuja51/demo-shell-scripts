#!/bin/bash


#This shell scripts checks if user exists 


read -p "Enter username that you wish to check" username

count=$(cat /etc/passwd | grep $username | wc | awk '{print $1}' )

if [ $count -eq 0 ];then
	echo "user doesnot exists"

else
	echo "user $username exists in system"

fi

