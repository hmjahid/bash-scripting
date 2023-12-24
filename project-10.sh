#!/bin/bash

RED="\e[31m"
GREEN="\e[32m"
EXIT="\e[0m"

divider () {
	echo -e "${RED}==================================${EXIT}"
}

clear

echo -e "      ${GREEN}*******************************${EXIT}"
echo -e "      ${GREEN}****** SERVER UTILIZATION *****${EXIT}"
echo -e "      ${GREEN}*******************************${EXIT}"
echo
divider
echo

echo -e "Today's date is: `date`"
echo
divider
echo

echo "Uptime: `uptime`"
echo
divider
echo

echo "Currently logged-on user's"
echo
w
echo
divider
echo

echo "Last logins"
echo
last -a | head -n 3
echo
divider
echo

echo "Disk and Memory usage"
echo
df -h | xargs | awk '{print "Free/Total disk:" $11 "/" $9 }'
echo
free -m | xargs | awk '{print "Free/Total memory:" $17 "/" $8 MB }'
echo
divider
echo

echo "Utilization and most expensive process"
echo
top -b | head -n 3
echo

top -b | head -n 10 | tail -n 4
echo
divider
