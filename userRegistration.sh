#!/bin/bash -x
shopt -s extglob #turn on extended globbing

echo "Welcome To User Registration Problem"
#PATTERN
NAME_PATTERN="^[A-Z]{1}[a-z]{3,}$"
EMAIL_PATTERN="^[0-9a-zA-Z]{1,}([._+-]{1}[a-zA-Z]+)?[@]{1}[0-9a-zA-Z]{1,}[.]{1}[a-z]{2,4}([.]{1}[a-z]{2})?$"
MOBILE_NO_PATTERN="^[0-9]{1,3}[ ][6-9]{1}[0-9]{9}$"
PASSWORD_PATTERN="^[a-zA-Z0-9]{8,}$"
PASSWORD_PATTERN="^(?=.*[A-Z])[a-zA-Z0-9]{8,}$"
PASSWORD_PATTERN="^(?=.*[A-Z])(?=.*[0-9])[a-zA-Z0-9]{8,}$"
PASSWORD_PATTERN="^(?=.*[A-Z])(?=.*[0-9])(?=.*[a-zA-Z0-9]{8,})[a-zA-Z0-9]{1,}[@#!$%^&*()_-]{1}[a-zA-Z0-9]{1,}$"

#check pattern is valid or not
function checkPattern() {
	if [[ $1 =~ $2 ]];
	then
		echo "$1 Is Valid"
	else
		echo "$1 Invalid"
	fi
}

read -p "Enter First Name:" fName
checkPattern $fName $NAME_PATTERN
read -p "Enter Last Name:" lName
checkPattern $lName $NAME_PATTERN
read -p "Enter Email Address:" email
checkPattern $email $EMAIL_PATTERN
read -p "Enter Mobile Number:" mNumber
checkPattern "$mNumber" "$MOBILE_NO_PATTERN"
read -p "Enter Password:" password
checkPattern $password $PASSWORD_PATTERN
