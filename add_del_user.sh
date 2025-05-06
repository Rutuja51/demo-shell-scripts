#! /bin/bash

# add or delete user

# Asking choice what user want to do ?

read -p "Welcome to the program.... \n What you want to do ?\n press -add- for add user \n -del- for delete user" choice

echo "$choice"


if [ "$choice" = "add" ]; then
    read -p "Enter username you want to add" adduser
    read -p "Enter password you want to set" password
    sudo useradd -m "$adduser"
    echo -e "$password\n$password" | sudo passwd "$adduser"

    echo "User added successfully"
    cat /etc/passwd

elif [ "$choice" = "del" ]; then
    read -p "which user you want to delete ?" deluser
    sudo userdel -r $deluser

    count=$(cat /etc/passwd | grep $deluser | wc | awk '{print $1}')

    if [ $count -eq 0 ];then

	echo "as wc is 0 the $deluser is deleted"
    else
	echo "as wc is not 0 the $deluser is not deleted"
    fi	
    
#    count = $(grep -c "$deluser" /etc/passwd)
#   echo "Number of user present with name $deluser is : $count"
#    cat /etc/passwd

else
    echo "Please select right choice"
fi

