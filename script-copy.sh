#!/bin/bash

echo "Enter script PIN:"
read pin

if [[ $pin -eq 2042 ]]
then
  ssh root@192.168.0.102
else
  echo "You are not permitted to run the script"
fi

sudo dnf update -y && sudo dnf upgrade -y

