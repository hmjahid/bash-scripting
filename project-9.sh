#!/bin/bash

read -p "[+]Enter your name:" NAME
read -p "[+]Enter your employee ID:" ID
read -p "[+]Enter your department:" DEPARTMENT
read -p "[+]Enter your gender:" GENDER

INFO=$NAME,$ID,$DEPARTMENT,$GENDER

read -p "Do you have given the correct informations [y/n]:" INPUT

case "$INPUT" in
	n | N )
	exit
	;;
	Y | y )
	echo $INFO >> employee_data.csv
	;;
	* )
	exit
	;;
esac

echo "You have stored data successfully..."

