#!/bin/bash
set -xv
echo "Trying to run socat"
socat /dev/ttyS0,raw,echo=0,crnl /dev/ttyACM0,raw,echo=0,crnl
