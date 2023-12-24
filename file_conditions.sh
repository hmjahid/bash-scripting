#!/bin/bash

FILE=script.sh

if [ -e $FILE ]
then
  echo "$FILE is present in the current directory"
else
  echo "$FILE is not present in the current directory"
fi

# -e for file presence
# -x for executable permission check
# -d for check if the file is a directory or not
# -h for checking symblink
# -r for checking readable permission
# -w for checking writable permission
