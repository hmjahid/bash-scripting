#!/bin/bash

NUM=( 1 2 3 4 5 6 7 8 9 10 )

for i in ${NUM[@]}
do
  echo $i
  let NUM++
done
