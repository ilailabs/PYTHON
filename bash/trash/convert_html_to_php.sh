#!/bin/bash
#make a sh copy of any text files

for value in $1/*.txt
do
  cp $value $1/$( basename -s .html $value ).php
done
