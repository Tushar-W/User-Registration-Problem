#!/bin/bash -x
shopt -s extglob #turn on extended globbing

echo "Welcome To User Registration Problem"
#PATTERN
pattern="^[A-Z]{1}[a-z]{3,}$"

#check pattern is valid or not
function checkPattern() {
	input=$1
	if [[ $input =~ $pattern ]];
	then
		echo "Valid"
	else
		echo "Invalid"
	fi
}

read -p "Enter First Name:" fName
checkPattern fname
read -p "Enter Last Name:" lName
checkPattern lname
