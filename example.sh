#!/bin/bash

g=('alamin' 'osman' 'jahid' 'shariful')

echo "${g[0]}"

echo "${g[*]}"

unset g[2]

echo "${g[*]}"

g[2]='jahid'

echo "${g[*]}"

g[0]='hamid'

echo "${g[*]}"
