#!/bin/bash


if [ 1 == 1 ]
then
  echo "One is equal to one"
else
  echo "One is not equal to given number"
fi


VAR=1

if [ $VAR -eq 1 ]
then
  echo "True"
else
 echo "False"
fi


STR1="HELLO"
STR2="HELLO"

if [ "$STR1" == "$STR2" ]
then
  echo "Both are same"
else
  echo "Both are not same"
fi
