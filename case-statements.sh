#!/bin/bash

echo "Enter your name:"
read NAME

case "$NAME" in
         "root" )
		echo "Access granted"
	;;
	"mdjahidhasan" )
		echo "Access not granted"
	;;
	* )
		echo "Access not granted" 
esac
