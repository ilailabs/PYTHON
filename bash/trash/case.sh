#!/bin/bash
# this is an example of case statement in bash

case $1 in
  start)
  echo starting
  ;;
  stop)
  echo stoping
  ;;
  restart)
  echo restarting
  ;;
  *)
  echo don\'t know
  ;;
esac
