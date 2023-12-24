#!/bin/bash

PASS=`date | sha256sum | cut -b 1-$1`

echo "Your password is $PASS"
