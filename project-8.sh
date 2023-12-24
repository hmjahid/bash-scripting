#!/bin/bash

if [ $# -eq 0 ]
then
	echo "Usage: $0 [File]"
	exit 1
fi

OWNER=`ls -la $1 | awk  '{print $3}'`
SIZE=`ls -la $1 | awk '{print $5}'`
DATE=`ls -la $1 | awk '{print $6 " " $7}'`
TIME=`ls -la $1 | awk '{print $8}'`

echo "Owner:$OWNER"
echo "Size:$SIZE bytes"
echo "File creation date:$DATE"
echo "File creation time:$TIME"
echo "File type:`file $1`"
echo
echo "File permissions"

if [ -r $1 ]
then
	echo "READABLE=TRUE"
else
	echo "READBALE =FALSE"
fi


if [ -w $1 ]
then
	echo "WRITEABLE=TRUE"
else
	echo "WRITABLE=FALSE"
fi

if [ -x $1 ]
then
	echo "EXECUTABLE=TRUE"
else
	echo "EXECUATBLE=FALSE"
fi
