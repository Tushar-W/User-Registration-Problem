#!/bin/bash -x
shopt -s extglob #turn on extended globbing

echo "Welcome To User Registration Problem"
#PATTERN
pattern="^[A-Z]{1}[a-z]{3,}$"

#check pattern is valid or not
function checkPattern() {
	if [[ $fName =~ $pattern ]];
	then
		echo "First Name Is Valid"
	else
		echo "First Name Is Invalid"
	fi
}

read -p "Enter First Name:" fName
checkPattern
