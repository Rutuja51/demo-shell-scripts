#! /bin/bash

<<info
This script will install the package
what you pass in the arguments

e.g ./install_package.sh nginx

./install_package.sh docker.io
./install_package.sh unzip

info

echo "Installing $1"

#sudo apt-get update  --- this will also work
sudo apt-get update > /dev/null # sending output to null folder as don't wnat to see output on screen
sudo apt-get install $1 -y  #-y will be the prompt which wil ask do you really want to install this?

echo "Installation completed"


