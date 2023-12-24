#!/bin/bash

if [ $UID -eq 0 ]
then
	echo "You have access"
else
	echo "You have no access"
fi
