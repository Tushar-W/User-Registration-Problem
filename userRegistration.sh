#!/bin/bash -x
shopt -s extglob #turn on extended globbing

echo "Welcome To User Registration Problem"
#PATTERN
NAME_PATTERN="^[A-Z]{1}[a-z]{3,}$"
EMAIL_PATTERN="^[0-9a-zA-Z]{1,}([._+-]{1}[a-zA-Z]+)?[@]{1}[0-9a-zA-Z]{1,}[.]{1}[a-z]{2,4}([.]{1}[a-z]{2})?$"

#check pattern is valid or not
function checkPattern() {
	if [[ $1 =~ $2 ]];
	then
		echo "Valid"
	else
		echo "Invalid"
	fi
}

read -p "Enter First Name:" fName
checkPattern $fname $NAME_PATTERN
read -p "Enter Last Name:" lName
checkPattern $lname $NAME_PATTERN
read -p "Enter Email Address:" email
checkPattern $email $EMAIL_PATTERN
