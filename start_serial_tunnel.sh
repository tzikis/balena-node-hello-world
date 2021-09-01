#!/bin/bash
set -xv
while true
do
  echo "Trying to run socat"
  socat /dev/ttyS0,raw,echo=0,crnl /dev/ttyACM0,raw,echo=0,crnl
	sleep 5
done
