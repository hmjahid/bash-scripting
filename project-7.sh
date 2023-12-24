#!/bin/bash

if [ $# -eq 0 ]
then
	echo "Usage: $0 [File-1] [File-2] ... [File-n]"
	exit
fi


for i in $@
do
	if [ -f $i ]
	then
		file_name=`echo $1 | sed "s/[.].*//"`
		convert $i $file_name.png
	else
		echo "ERROR: $i is not a file"
	fi
done


echo "[+] File conversion completed..."
