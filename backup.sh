#!/bin/bash
#
#This shell script will take periodic backups
#e.g ./backup.sh <source <dest>>
#src=/home/ubuntu/scripts
#dest=/home/ubuntu/backup
#

src=$1
dest=$2

timestamp=$(date '+%Y-%m-%d-%H-%M')

zip -r "$dest/backup-$timestamp.zip" "$src" > /dev/null  #on local

aws s3 sync "$dest"/ s3://tws-backup-dev # on aws s3

echo "backup completed & uploaded on s3"


