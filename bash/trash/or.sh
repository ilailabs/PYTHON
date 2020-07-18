#!/bin/bash

if [ $USER == 'bob' ] || [ $USER == 'ilai' ]
then
  ls -alh
else
  ls
fi
