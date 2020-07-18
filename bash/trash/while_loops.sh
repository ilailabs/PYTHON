#!/bin/bash
#this file show the use of while loop in #!/usr/bin/env bash

counter=1
while [ $counter -le 10 ]
do
  echo $counter
  ((counter++))
done

echo All Done!
