#!/bin/bash

echo "
#############################
# Secure Password Generator #
#############################
"

echo "Welcome to my Secure Password Generator."

echo -e "This script will generate a secure password that includes capital letters, small letters, numbers and special characters. \n"

LENGTH=false

while [ "$LENGTH" = false ]; do
    echo "Please enter the desired length of Your new password (min. 8 characters)"
    read CHAR_NUM

    if [ $CHAR_NUM -lt 8 ]; then
        echo -e "The length you entered is less than 8 characters, please try again \n"
    else
        LENGTH=true
        echo "Your new secure password is:"
        openssl rand -base64 48 | cut -c1-$CHAR_NUM
    fi
done
