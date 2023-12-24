#!/bin/bash

user='root'

if [ $user = 'root' ]
then
  sudo dnf update -y
  sudo dnf upgrade -y
  cd
  clear
  sudo su
else
  echo "Not permitted"
fi
