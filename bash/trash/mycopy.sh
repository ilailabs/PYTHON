#!/bin/bash
# a sample copy script- to copy two files

cp $1 $2

# let's verify the copy worked

echo Details for $2
ls -lh $2
