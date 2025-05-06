#!/bin/bash

#user defined variales
hero="rancho"
villain="virus"

echo "3 idiots ka hero hai $hero"

echo "3 idiots ka villian hai $villian"

#shell/environment variables bhi hote hai (these are predefined variables)

echo "Logedin user is $USER"

read -p "rancho ka pura name kya tha" fullname

echo "rancho ka pura naam tha $fullname"


#arguments
# ./3_idiots.sh raju farhan rancho
#
# ./3_idiots => $0
# raju =>$1
# farhan => $2
# rancho => $3
#
# total argiments => $@
#
# ./3_idiots.sh raju farhan rancho

echo "movie name :$0"

echo "first idiot:$1"

echo "second idiot:$2"

echo "third idiot: $3"

echo "Hence 3 idiots are $@"

echo "Total no of idiots $#"
