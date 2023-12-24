#!/bin/bash

RE="e\[31m"
GREEN="e\[32m"
EXIT="e\[0m"

if [ $UID -ne 0 ]
then
	echo "Error: Run as root/sudo user"
	exit 1
fi

PACKAGES=( figlet sl net-tools )

for i in ${PACKAGES[@]}
do
	echo -e "${RED}[+] Installing $i ...${EXIT}"
	dnf install $i -y
	echo
	echo -e "${GREEN}[+] Installed successfully.${EXIT}"
	echo
done
