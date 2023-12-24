#!/bin/bash

user='root'

if [ $user = 'root' ]
then
  echo "Running program.."
  date
  sudo dnf update -y
else
  echo "PLease run the script as root"
fi
